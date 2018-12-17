unit UCadPedido_ItensRed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadPedido, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, UCadPedido_Itens_Imposto, Mask, RxDBComb, UCadProduto, UCadUnidade, UCadCFOP, ToolEdit,
  RXDBCtrl, RzTabs, RzPanel, UCadPessoa, NxCollection, 
  NxEdit, UCadNCM, ExtDlgs;

type
  TfrmCadPedido_ItensRed = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel2: TPanel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dbedtQtd: TDBEdit;
    Label13: TLabel;
    DBDateEdit1: TDBDateEdit;
    pnlTipo1: TPanel;
    Label2: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label15: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    RzPageControl1: TRzPageControl;
    TabSheet2: TRzTabSheet;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    TabSheet1: TRzTabSheet;
    Label11: TLabel;
    Label14: TLabel;
    DBMemo2: TDBMemo;
    Label12: TLabel;
    Label21: TLabel;
    DBEdit15: TDBEdit;
    gbxVendedor: TRzGroupBox;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    BitBtn3: TBitBtn;
    Label27: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    Label29: TLabel;
    DBEdit12: TDBEdit;
    Label3: TLabel;
    DBEdit23: TDBEdit;
    SpeedButton13: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label32: TLabel;
    DBEdit13: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    Label46: TLabel;
    DBEdit21: TDBEdit;
    Label47: TLabel;
    DBEdit22: TDBEdit;
    dbedtVlrTotal: TDBEdit;
    dbedtVlrUnitario: TDBEdit;
    Label10: TLabel;
    DBEdi4: TDBEdit;
    BitBtn20: TBitBtn;
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    DBEdit1: TDBEdit;
    pnlMaterial: TPanel;
    btnServico: TNxButton;
    Memo1: TMemo;
    Label16: TLabel;
    DBEdit2: TDBEdit;
    NxButton1: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure dbedtQtdExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure pnlTipo1Exit(Sender: TObject);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit23KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel1Exit(Sender: TObject);
    procedure dbedtQtdEnter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure Panel1Enter(Sender: TObject);
    procedure DBEdit21KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit23Enter(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
    procedure dbedtVlrUnitarioExit(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure btnServicoClick(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
    ffrmCadPedido_Itens_Imposto: TfrmCadPedido_Itens_Imposto;
    ffrmCadProduto: TfrmCadProduto;
    ffrmCadUnidade: TfrmCadUnidade;
    ffrmCadCFOP: TfrmCadCFOP;
    ffrmCadPessoa: TfrmCadPessoa;
    ffrmCadNCM: TfrmCadNCM;

    vCodProdutoAnt: Integer;
    vID_CFOPAnt: Integer;
    vState: String;
    vQtd_Prod_Ant: Real;
    vVlr_Unitario_Ant: Real;
    vID_Produto_Ant: Integer;
    vDtEntrega_Ant : TDateTime;
    vVlrDesc_Ant : Real;
    vVlrProd_Ant : Real;
    vPreco_Ori : Real;
    vID_Servico_Ant : Integer;
    vUnidade_Ant : String;

    procedure prc_Buscar_Imposto(Auxiliar, Nome: String);

    function  fnc_Erro: Boolean;

    function fnc_Verificar_Produto(CodProduto: Integer): Boolean;

    function fnc_Verifica_SubstTributaria: Boolean;
    procedure prc_Chama_Form_Produto;
    procedure prc_Sel_Unidade(Venda : Boolean = False);
    procedure prc_Calcular_VlrItens;
    procedure prc_Monta_MatMed;

    function prc_Senha_Desconto : Boolean;
    function fnc_Busca_Preco_Orig : Real;

  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    vMostrar_Preco: Boolean;
    vPedidoSelecionado: Boolean;
    vGravacao_Ok : Boolean;

    procedure prc_Move_Dados_Itens;

  end;

var
  frmCadPedido_ItensRed: TfrmCadPedido_ItensRed;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao, UDMUtil, UMenu,
  USel_Unidade, Math, USenha, uCalculo_Pedido, USel_TabPreco,
  UCadPedido_MatMed, UPedido_PrecoSug;

{$R *.dfm}

procedure TfrmCadPedido_ItensRed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadPedido.cdsPedido_Itens.State in [dsEdit,dsInsert] then
    fDMCadPedido.cdsPedido_Itens.Cancel;
  Action := Cafree;
end;

procedure TfrmCadPedido_ItensRed.FormShow(Sender: TObject);
var
  vCODCFOP_Aux: String;
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);

  vPreco_Pos := 0;
  //14/12/2017
  if fDMCadPedido.cdsClienteCODIGO.AsInteger <> fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger then
    fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  //**************

  vCodProdutoAnt := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
  vID_CFOPAnt    := fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger;

  Label13.Visible     := (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'I');
  DBDateEdit1.Visible := (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'I');

  Label21.Visible       := (fDMCadPedido.cdsParametrosUSA_ID_PRODUTO.AsString = 'S');
  DBEdit15.Visible      := (fDMCadPedido.cdsParametrosUSA_ID_PRODUTO.AsString = 'S');

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

  //Mostrar Preço
  Label7.Visible  := vMostrar_Preco;
  Label8.Visible  := vMostrar_Preco;
  dbedtVlrUnitario.Visible := vMostrar_Preco;
  dbedtVlrTotal.Visible := vMostrar_Preco;
  //*****************
  //26/01/2017
  if fDMCadPedido.qParametros_FinCONTROLE_DIG_PRECO.AsString = 'S' then
    dbedtVlrUnitario.ReadOnly := ((fDMCadPedido.qParametros_UsuarioALT_PRECO_PED.AsString <> 'S') and (fDMCadPedido.qParametros_UsuarioALT_PRECO_PED.AsString <> 'C'));
  //************

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
  vDtEntrega_Ant    := fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime;

  vVlr_Unitario_Ant := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
  if vState = 'E' then
    vQtd_Prod_Ant := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat))
  else
    vQtd_Prod_Ant := StrToFloat(FormatFloat('0.0000',0));
  Label32.Visible  := (fDMCadPedido.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I');
  DBEdit13.Visible := (fDMCadPedido.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I');
  DBCheckBox3.Visible := (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat)) > 0);

  if fDMCadPedido.qParametros_PedUSA_DESC_VAREJO.AsString = 'S' then
    BitBtn3.Caption := 'Impostos';
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
  Label46.Visible     := (fDMCadPedido.qParametros_PedUSA_UNIDADE_VENDA.AsString = 'S');
  DBEdit21.Visible    := (fDMCadPedido.qParametros_PedUSA_UNIDADE_VENDA.AsString = 'S');
  Label47.Visible     := (fDMCadPedido.qParametros_PedUSA_UNIDADE_VENDA.AsString = 'S');
  DBEdit22.Visible    := (fDMCadPedido.qParametros_PedUSA_UNIDADE_VENDA.AsString = 'S');

  try
    Image1.Picture := Nil;
    if fDMCadPedido.cdsPedido_ItensFOTO.AsString <> '' then
      Image1.Picture.LoadFromFile(fDMCadPedido.cdsPedido_ItensFOTO.AsString);
  except
  end;
  fDMCadPedido.cdsTipo_Material.Close;
  fDMCadPedido.cdsTipo_Material.Open;
  prc_Monta_MatMed;
end;

procedure TfrmCadPedido_ItensRed.Panel2Enter(Sender: TObject);
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
  if (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S') or not(fDMCadPedido.cdsPedido_Item_Tipo.IsEmpty) then
    vVlrAux := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
  if ((fDMCadPedido.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S') and (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger < 1)) or (fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger < 1) then
    exit;
  vPreco_Ori := 0;
  if (vState = 'I') or (fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger <> vCodProdutoAnt) or (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <> vID_CFOPAnt) or
     (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S') then
    prc_Move_Dados_Itens
  else
    vPreco_Ori := fnc_Busca_Preco_Orig;

  if (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S') or not(fDMCadPedido.cdsPedido_Item_Tipo.IsEmpty) then
    fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := vVlrAux;
end;

procedure TfrmCadPedido_ItensRed.prc_Buscar_Imposto(Auxiliar, Nome: String);
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

procedure TfrmCadPedido_ItensRed.prc_Move_Dados_Itens;
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
  dbedtQtd.ReadOnly := ((fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S') and (fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S')) ;
  if (fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S') and (fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') then
    dbedtQtd.Color := clSilver
  else
    dbedtQtd.Color := clWindow;
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
  if ((fDMCadPedido.cdsCFOPGERAR_IPI.AsString = 'S') or (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <= 0)) and not(vIPI_Suspenso) and
    (fDMCadPedido.cdsFilialCALCULAR_IPI.AsString = 'S') then
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
    //14/12/2017 Beira Rio    incluido na versão .465 e tirado na versão .468, porque o Beira Rio pode ter produtos diferentes e dentro da SLTextil ser o mesmo
    {if fDMCadPedido.cdsClienteIMP_COR_CLIENTE.AsString = 'S' then
    begin
      fDMCadPedido.qProdForn2.Close;
      fDMCadPedido.qProdForn2.ParamByName('ID').AsInteger            := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
      fDMCadPedido.qProdForn2.ParamByName('ID_FORNECEDOR').AsInteger := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
      fDMCadPedido.qProdForn2.ParamByName('ID_COR').AsInteger        := fDMCadPedido.cdsPedido_ItensID_COR.AsInteger;
      fDMCadPedido.qProdForn2.Open;
      if fDMCadPedido.qProdForn2.IsEmpty then
        MessageDlg('*** Produto sem relacionamento, Favor verificar!', mtInformation, [mbOk], 0)
      else
      begin
        if (trim(fDMCadPedido.cdsPedido_ItensCOD_PRODUTO_CLIENTE.AsString) <> '') and (trim(fDMCadPedido.qProdForn2COD_MATERIAL_FORN.AsString) <> trim(fDMCadPedido.cdsPedido_ItensCOD_PRODUTO_CLIENTE.AsString)) then
          MessageDlg('*** Código do produto do cliente diferente do informado, favor verificar!', mtInformation, [mbOk], 0);
        fDMCadPedido.cdsPedido_ItensCOD_PRODUTO_CLIENTE.AsString := fDMCadPedido.qProdForn2COD_MATERIAL_FORN.AsString;
        fDMCadPedido.cdsPedido_ItensCOD_COR_CLIENTE.AsString     := fDMCadPedido.qProdForn2COD_COR_FORN.AsString;
        fDMCadPedido.cdsPedido_ItensNOME_COR_CLIENTE.AsString    := fDMCadPedido.qProdForn2NOME_COR_FORN.AsString;
        fDMCadPedido.cdsPedido_ItensTAMANHO_CLIENTE.AsString     := fDMCadPedido.qProdForn2TAMANHO_CLIENTE.AsString;
      end;
    end;}
    //********************
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

procedure TfrmCadPedido_ItensRed.dbedtQtdExit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadPedido_ItensRed.prc_Calcular_VlrItens;
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

procedure TfrmCadPedido_ItensRed.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
  vEditar: Boolean;
  vDataSet: TDataSet;
  vCarimbo: String;
  vQtdAux: Real;
begin
  if fnc_Erro then
    exit;
  if (fDMCadPedido.cdsParametrosUSA_LOTE.AsString = 'S') and (fDMCadPedido.cdsPedido_ItensGERAR_LOTE.AsString <> 'S') then
    if MessageDlg('Item não esta marcado para gerar lote, confirma assim mesmo?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
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

  vFlagErro := False;
  try
    if RxDBLookupCombo7.Text <> '' then
      fDMCadPedido.cdsPedido_ItensNCM.AsString := RxDBLookupCombo7.Text;
    if fDMCadPedido.cdsProdutoID.AsInteger <>  fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger then
      fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
    if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat)) > 0 then
      fDMCadPedido.cdsPedidoTIPO_DESCONTO.AsString := 'I';
    if (fDMCadPedido.qParametros_PedUSA_OPERACAO_SERV.AsString <> 'S') or (trim(fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString) = '') then
    begin
      if fDMCadPedido.qParametros_PedPERMITE_ALT_NOMEPROD.AsString <> 'S' then
        fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsProdutoNOME.AsString;
    end;
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

    //15/09/2016
    fDMCadPedido.cdsPedido_ItensVLR_DESCONTO_CALC.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat +
                                                                        fDMCadPedido.cdsPedido_ItensVLR_DESCONTORATEIO.AsFloat));

    fDMCadPedido.cdsPedido_Itens.Post;

  except
    on E: exception do
    begin
      vFlagErro := True;  
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;

  if (vPedidoSelecionado) or (Tag = 2) then //Tag 2 é o pedido loja
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
      Image1.Picture := nil;

      fDMCadPedido.prc_Inserir_Itens;
      fDMCadPedido.cdsPedido_ItensCARIMBO.AsString := vCarimbo;
      if fDMCadPedido.cdsParametrosREPETIR_ULTIMO_ITEM_PED.AsString = 'S' then
        fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger := vID_Produto_Ant;

      vState := 'I';
      if DBEdit15.Visible then
        DBEdit15.SetFocus
      else
        RxDBLookupCombo4.SetFocus;
    end;
  end;
end;

function TfrmCadPedido_ItensRed.fnc_Erro: Boolean;
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
  //tirei a pedido do Carlos no dia 07/03/2018 - justificativa (tem produtos que não tem estoque mas tem lote e o sistema não deixa passar)
//  if (fDMCadPedido.qParametros_ProdUSA_LOTE_PROD.AsString = 'S') and (trim(fDMCadPedido.cdsPedido_ItensNUM_LOTE_CONTROLE.AsString) = '') then
//  begin
//    if fnc_Existe_Prod_Lote(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger) then
//      vMsgErro := vMsgErro + #13 + '*** Campo Nº Lote não pode ser em branco, pois no produto esta cadastrado Lote!';
//  end;
  if (trim(RxDBLookupCombo2.Text) = '') or (trim(RxDBLookupCombo4.Text) = '') then
    vMsgErro := vMsgErro + #13 + '*** Favor verificar que o produto não esta atualizado, pois esta em branco o nome!';
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
  if fDMCadPedido.qParametros_PedACEITA_SEM_PRECO.AsString <> 'S' then
  begin
    if (StrToFloat(FormatFloat('0.000000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat)) <= 0) and (vMostrar_Preco) then
      vMsgErro := vMsgErro + #13 + '*** Valor Unitário não informado!';
  end;
  if (fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime > 10) and (fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime < fDMCadPedido.cdsPedidoDTEMISSAO.AsDateTime) then
    vMSGErro := vMSGErro + #13 + '*** Data de entrega menor que a data de emissão!';
  if fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** NCM não informado!';
  //Aqui tamanho
  if (fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S') and (trim(fDMCadPedido.cdsPedido_ItensTAMANHO.AsString) = '') and (fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') and
     //(fDMCadPedido.cdsPedido_Itens.State in [dsEdit]) then
     (vState = 'E') then
    vMsgErro := vMsgErro + #13 + '*** Tamanho não informado!';

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

procedure TfrmCadPedido_ItensRed.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadPedido_ItensRed.BitBtn3Click(Sender: TObject);
begin
  ffrmCadPedido_Itens_Imposto := TfrmCadPedido_Itens_Imposto.Create(self);
  ffrmCadPedido_Itens_Imposto.fDMCadPedido := fDMCadPedido;
  ffrmCadPedido_Itens_Imposto.ShowModal;
  FreeAndNil(ffrmCadPedido_Itens_Imposto);
end;

procedure TfrmCadPedido_ItensRed.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadProduto := TfrmCadProduto.Create(self);
  ffrmCadProduto.vID_Produto_Local := 0;
  if RxDBLookupCombo2.Text <> '' then
    ffrmCadProduto.vID_Produto_Local := RxDBLookupCombo2.KeyValue;
  ffrmCadProduto.ShowModal;
  FreeAndNil(ffrmCadProduto);
  SpeedButton4Click(sender);
end;

procedure TfrmCadPedido_ItensRed.SpeedButton4Click(Sender: TObject);
begin
  fDMCadPedido.cdsParametros.Close;
  fDMCadPedido.cdsParametros.Open;
  fDMCadPedido.prc_Abrir_Produto;
  SpeedButton12Click(Sender);
end;

procedure TfrmCadPedido_ItensRed.SpeedButton3Click(Sender: TObject);
begin
  ffrmCadCFOP := TfrmCadCFOP.Create(self);
  ffrmCadCFOP.ShowModal;

  FreeAndNil(ffrmCadCFOP);

  SpeedButton5Click(Sender);
end;

procedure TfrmCadPedido_ItensRed.SpeedButton5Click(Sender: TObject);
begin
  fDMCadPedido.cdsCFOP.Close;
  fDMCadPedido.cdsCFOP.Open;
end;

procedure TfrmCadPedido_ItensRed.FormKeyDown(Sender: TObject;
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
        RxDBLookupCombo4.SetFocus;
    end;
    RxDBLookupCombo4Change(Sender);
  end;

end;

procedure TfrmCadPedido_ItensRed.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDMCadPedido.cdsCFOP.IndexFieldNames := 'CODCFOP';
end;

procedure TfrmCadPedido_ItensRed.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMCadPedido.cdsProduto.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmCadPedido_ItensRed.RxDBLookupCombo2Enter(Sender: TObject);
begin
  fDMCadPedido.cdsProduto.IndexFieldNames := 'NOME';
end;

procedure TfrmCadPedido_ItensRed.RxDBLookupCombo4Change(Sender: TObject);
begin
{  if trim(RxDBLookupCombo4.Text) <> '' then
  begin
    if fDMCadPedido.cdsPedido_Itens.State in [dsEdit,dsInsert] then
      fDMCadPedido.cdsPedido_ItensREFERENCIA.AsString := RxDBLookupCombo4.Text;
  end;}
end;

procedure TfrmCadPedido_ItensRed.pnlTipo1Exit(Sender: TObject);
var
  vFinalidadeAux: String;
  vID_VariacaoAux: Integer;
begin
  vFinalidadeAux := fDMCadPedido.cdsPedidoFINALIDADE.AsString;
  if trim(vFinalidadeAux) = '' then
    vFinalidadeAux := 'O';
  fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
  if vCodProdutoAnt <> fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger then
  begin
    if fDMCadPedido.qParametros_PedPERMITE_ALT_NOMEPROD.AsString = 'S' then
      fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsProdutoNOME.AsString;
  end;
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
end;

procedure TfrmCadPedido_ItensRed.DBEdit15KeyDown(Sender: TObject;
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
        dbedtQtd.SetFocus
      else
      if RxDBLookupCombo1.Visible then
        RxDBLookupCombo1.SetFocus;
    end;
  end
  else
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto;
end;

function TfrmCadPedido_ItensRed.fnc_Verificar_Produto(CodProduto: Integer): Boolean;
begin
  Result := False;
  if fDMCadPedido.cdsProduto.Locate('ID',CodProduto,[loCaseInsensitive]) then
    Result := True;
end;

procedure TfrmCadPedido_ItensRed.DBDateEdit1Exit(Sender: TObject);
begin
  if (fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime > 10) and (fDMCadPedido.cdsPedido_ItensDTPRODUCAO.AsDateTime < 10) then
    fDMCadPedido.cdsPedido_ItensDTPRODUCAO.AsDateTime := fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime;
end;

procedure TfrmCadPedido_ItensRed.RxDBLookupCombo1Exit(Sender: TObject);
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

procedure TfrmCadPedido_ItensRed.SpeedButton11Click(Sender: TObject);
begin
  ffrmCadNCM := TfrmCadNCM.Create(self);
  ffrmCadNCM.ShowModal;

  FreeAndNil(ffrmCadNCM);

  SpeedButton12Click(Sender);
end;

procedure TfrmCadPedido_ItensRed.SpeedButton12Click(Sender: TObject);
begin
  fDMCadPedido.cdsTab_NCM.Close;
  fDMCadPedido.cdsTab_NCM.Open;
end;

function TfrmCadPedido_ItensRed.fnc_Verifica_SubstTributaria: Boolean;
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

procedure TfrmCadPedido_ItensRed.SpeedButton13Click(Sender: TObject);
begin
  ffrmCadUnidade := TfrmCadUnidade.Create(self);
  ffrmCadUnidade.ShowModal;

  FreeAndNil(ffrmCadUnidade);

  SpeedButton6Click(Sender);

end;

procedure TfrmCadPedido_ItensRed.SpeedButton6Click(Sender: TObject);
begin
  fDMCadPedido.cdsUnidade.Close;
  fDMCadPedido.cdsUnidade.Open;
end;

procedure TfrmCadPedido_ItensRed.prc_Chama_Form_Produto;
begin
  vCodProduto_Pos := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
  vCodPessoa_Pos  := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
  frmSel_Produto  := TfrmSel_Produto.Create(Self);
  frmSel_Produto.vID_TabPreco := fDMCadPedido.cdsClienteID_TAB_PRECO.AsInteger;
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
      RxDBLookupCombo4.SetFocus;
  end;
  RxDBLookupCombo4Change(RxDBLookupCombo4);
end;

procedure TfrmCadPedido_ItensRed.RxDBLookupCombo4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto;
end;

procedure TfrmCadPedido_ItensRed.RxDBLookupCombo2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto;
end;

procedure TfrmCadPedido_ItensRed.DBEdit23KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Sel_Unidade(False);
end;

procedure TfrmCadPedido_ItensRed.Panel1Exit(Sender: TObject);
begin
  if (vID_Produto_Ant <> fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger) and (fDMCadPedido.qParametros_PedUSA_OPERACAO_SERV.AsString = 'S') then
  begin
    if fDMCadPedido.cdsProdutoID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger then
      fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
    if fDMCadPedido.qParametros_PedPERMITE_ALT_NOMEPROD.AsString <> 'S' then
      fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsProdutoNOME.AsString;
  end;
end;

procedure TfrmCadPedido_ItensRed.dbedtQtdEnter(Sender: TObject);
begin
  vQtd_Prod_Ant := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat));
end;

procedure TfrmCadPedido_ItensRed.DBEdit4Exit(Sender: TObject);
begin
  DBCheckBox3.Visible := (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat)) > 0);
end;

function TfrmCadPedido_ItensRed.prc_Senha_Desconto: Boolean;
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

function TfrmCadPedido_ItensRed.fnc_Busca_Preco_Orig: Real;
var
  vPrecoAux : Real;
begin
  Result    := StrToFloat(FormatFloat('0.000000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
end;

procedure TfrmCadPedido_ItensRed.Panel1Enter(Sender: TObject);
begin
  vID_Produto_Ant := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
end;

procedure TfrmCadPedido_ItensRed.prc_Sel_Unidade(Venda: Boolean);
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

procedure TfrmCadPedido_ItensRed.DBEdit21KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //if (Key = Vk_F2) then
  //  prc_Sel_Unidade(True);
end;

procedure TfrmCadPedido_ItensRed.DBEdit23Enter(Sender: TObject);
begin
  vUnidade_Ant := fDMCadPedido.cdsPedido_ItensUNIDADE.AsString;
end;

procedure TfrmCadPedido_ItensRed.DBEdit23Exit(Sender: TObject);
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

procedure TfrmCadPedido_ItensRed.dbedtVlrUnitarioExit(Sender: TObject);
begin
  if (fDMCadPedido.qParametros_FinCONTROLE_DIG_PRECO.AsString = 'S') and (fDMCadPedido.qParametros_UsuarioALT_PRECO_PED.AsString = 'C') and
    (StrToFloat(FormatFloat('0.000000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat)) < StrToFloat(FormatFloat('0.000000',vPreco_Ori))) then
  begin
    MessageDlg('*** Preço não pode ser menor que ' + FormatFloat('0.00####',vPreco_Ori), mtError, [mbOk], 0);
    fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := vPreco_Ori;
    dbedtVlrUnitario.SetFocus;
  end;
  prc_Calcular_VlrItens;
end;

procedure TfrmCadPedido_ItensRed.BitBtn20Click(Sender: TObject);
begin
  OpenPictureDialog1.Execute;
  fDMCadPedido.cdsPedido_ItensFOTO.AsString := OpenPictureDialog1.FileName;
  try
    Image1.Picture.LoadFromFile(fDMCadPedido.cdsPedido_ItensFOTO.AsString)
  except
    Image1.Picture := nil;
  end;
end;

procedure TfrmCadPedido_ItensRed.btnServicoClick(Sender: TObject);
var
  ffrmCadPedido_MatMed: TfrmCadPedido_MatMed;
begin
  if not fDMCadPedido.cdsPedido_Item_Tipo.IsEmpty then
    fDMCadPedido.cdsPedido_Item_Tipo.Edit
  else
  begin
    fDMCadPedido.cdsPedido_Item_Tipo.Insert;
    fDMCadPedido.cdsPedido_Item_TipoID.AsInteger   := fDMCadPedido.cdsPedido_ItensID.AsInteger;
    fDMCadPedido.cdsPedido_Item_TipoITEM.AsInteger := fDMCadPedido.cdsPedido_ItensITEM.AsInteger;
  end;
  ffrmCadPedido_MatMed := TfrmCadPedido_MatMed.Create(self);
  ffrmCadPedido_MatMed.fDMCadPedido := fDMCadPedido;
  ffrmCadPedido_MatMed.ShowModal;
  FreeAndNil(ffrmCadPedido_MatMed);
  prc_Monta_MatMed;
  dbedtQtd.SetFocus;
end;

procedure TfrmCadPedido_ItensRed.prc_Monta_MatMed;
begin
  Memo1.Visible := not( fDMCadPedido.cdsPedido_Item_Tipo.IsEmpty);
  if not fDMCadPedido.cdsPedido_Item_Tipo.IsEmpty then
  begin
    //fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_Item_TipoVLR_TOTAL.AsFloat));
    fDMCadPedido.cdsPedido_ItensVLR_MATERIAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_Item_TipoVLR_TOTAL.AsFloat));
    Memo1.Lines.Clear;
    {if fDMCadPedido.cdsPedido_Item_TipoID_MATERIAL.AsInteger > 0 then
    begin
      fDMCadPedido.qProduto.Close;
      fDMCadPedido.qProduto.ParamByName('ID').AsInteger := fDMCadPedido.cdsPedido_Item_TipoID_MATERIAL.AsInteger;
      fDMCadPedido.qProduto.Open;
      Memo1.Lines.Add(copy(fDMCadPedido.qProdutoNOME_GRUPO.AsString,1,30));
    end;}
    if fDMCadPedido.cdsPedido_Item_TipoID_TIPO_MATERIAL.AsInteger > 0 then
    begin
      fDMCadPedido.cdsTipo_Material.Locate('ID',fDMCadPedido.cdsPedido_Item_TipoID_MATERIAL.AsInteger,[loCaseInsensitive]);
      Memo1.Lines.Add(copy(fDMCadPedido.cdsTipo_MaterialNOME.AsString,1,30));
    end;
    Memo1.Lines.Add('Comp: '+fDMCadPedido.cdsPedido_Item_TipoCOMPRIMENTO.AsString + '   Larg: ' +fDMCadPedido.cdsPedido_Item_TipoLARGURA.AsString + '    Esp.: ' + fDMCadPedido.cdsPedido_Item_TipoESPESSURA.AsString) ;
    Memo1.Lines.Add('Dens.: ' + fDMCadPedido.cdsPedido_Item_TipoDENSIDADE.AsString);
    Memo1.Lines.Add('Peso: ' + fDMCadPedido.cdsPedido_Item_TipoPESO.AsString );
  end;
end;

procedure TfrmCadPedido_ItensRed.DBEdit1Enter(Sender: TObject);
begin
  DBEdit1.SelStart := (Length(DBEdit1.Text) + 1);
end;

procedure TfrmCadPedido_ItensRed.NxButton1Click(Sender: TObject);
var
  ffrmPedido_PrecoSug: TfrmPedido_PrecoSug;
  vNomeAux : String;
begin
  if fDMCadPedido.cdsPedido_Item_Tipo.IsEmpty then
  begin
    MessageDlg('*** Primeiro deve ser informado o material com as medidas!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMCadPedido.vConfirma_Calc := False;
  ffrmPedido_PrecoSug := TfrmPedido_PrecoSug.Create(self);
  ffrmPedido_PrecoSug.fDMCadPedido := fDMCadPedido;
  fDMCadPedido.cdsTipo_Material.Locate('ID',fDMCadPedido.cdsPedido_Item_TipoID_MATERIAL.AsInteger,[loCaseInsensitive]);
  ffrmPedido_PrecoSug.Edit1.Text := fDMCadPedido.cdsTipo_MaterialNOME.AsString;
  ffrmPedido_PrecoSug.CurrencyEdit1.Value := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_MATERIAL.AsFloat));
  ffrmPedido_PrecoSug.CurrencyEdit3.Value := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensTEMPO.AsFloat));
  ffrmPedido_PrecoSug.CurrencyEdit2.Value := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_Item_TipoFATOR_CALCULO.AsFloat));
  ffrmPedido_PrecoSug.CurrencyEdit4.Value := fDMCadPedido.cdsPedido_ItensQTD.AsInteger;
  ffrmPedido_PrecoSug.CurrencyEdit5.Value := fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsInteger;
  ffrmPedido_PrecoSug.ceVlrMaquina.Value  := fDMCadPedido.cdsPedido_Item_TipoVLR_MAQUINA.AsFloat;
  ffrmPedido_PrecoSug.ShowModal;
  FreeAndNil(ffrmPedido_PrecoSug);
  if fDMCadPedido.vConfirma_Calc then
  begin
    fDMCadPedido.cdsPedido_ItensQTD.AsFloat := fDMCadPedido.vQtd_Calc;
    fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := fDMCadPedido.vVlr_Unitario_Calc;
    fDMCadPedido.cdsPedido_Item_Tipo.Edit;
    fDMCadPedido.cdsPedido_Item_TipoFATOR_CALCULO.AsFloat := fDMCadPedido.vFator_Calculo;
    fDMCadPedido.cdsPedido_Item_TipoVLR_MAQUINA.AsFloat   := fDMCadPedido.vVlr_Maquina_Calc;
    fDMCadPedido.cdsPedido_Item_Tipo.Post;
    fDMCadPedido.cdsPedido_ItensTEMPO.AsFloat             := fDMCadPedido.vTempo_Prod_Calc;
    dbedtVlrUnitarioExit(Sender);
  end;
end;

end.
