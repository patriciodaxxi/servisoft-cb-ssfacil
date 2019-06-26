unit UCadOrcamento_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMCadPedido, StdCtrls,
  Buttons, RxLookup, DBCtrls, DB, Mask, RxDBComb, UCadProduto, UCadUnidade, UCadCFOP, ToolEdit, RXDBCtrl, NxCollection,
  UDMInformar_Tam, UCadPedido_Mat, UInformar_Tam, RzPanel, UCadPedido_TipoItem, RzTabs, ExtDlgs, UCadPedido_Itens_Imposto,
  UCadNCM;

type
  TfrmCadOrcamento_Itens = class(TForm)
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
    Shape1: TShape;
    Label30: TLabel;
    lblEstoque: TLabel;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label13: TLabel;
    DBDateEdit1: TDBDateEdit;
    pnlMaterial: TPanel;
    btnDigMaterial: TNxButton;
    lblTamanho: TLabel;
    btnGrade: TNxButton;
    dblcTamanho: TRxDBLookupCombo;
    pnlTipo2: TPanel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    RxDBLookupCombo8: TRxDBLookupCombo;
    Label12: TLabel;
    pnlTipo1: TPanel;
    Label5: TLabel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Label10: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    Label14: TLabel;
    DBMemo2: TDBMemo;
    TabSheet2: TRzTabSheet;
    Label9: TLabel;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    Label16: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    DBEdit10: TDBEdit;
    pnlTipoOrcamento: TPanel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    TS_Foto: TRzTabSheet;
    Label17: TLabel;
    OpenPictureDialog2: TOpenPictureDialog;
    DBEdit19: TDBEdit;
    Image1: TImage;
    BitBtn20: TBitBtn;
    gbxVendedor: TRzGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label27: TLabel;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    BitBtn3: TBitBtn;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label6: TLabel;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    DBEdit23: TDBEdit;
    gbxDesconto: TRzGroupBox;
    Label34: TLabel;
    dbedtVlrDesc: TDBEdit;
    Label3: TLabel;
    dbedtPercDesc: TDBEdit;
    Label18: TLabel;
    dbedtVlrProd: TDBEdit;
    Label32: TLabel;
    DBEdit13: TDBEdit;
    Panel4: TPanel;
    DBEdit1: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    Label19: TLabel;
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
    procedure RxDBLookupCombo8Enter(Sender: TObject);
    procedure RxDBLookupCombo4Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btnDigMaterialClick(Sender: TObject);
    procedure btnGradeClick(Sender: TObject);
    procedure RxDBLookupCombo8Exit(Sender: TObject);
    procedure pnlTipo1Exit(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit23KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel1Exit(Sender: TObject);
    procedure dbedtPercDescExit(Sender: TObject);
    procedure dbedtVlrDescEnter(Sender: TObject);
    procedure dbedtVlrDescExit(Sender: TObject);
    procedure dbedtVlrProdEnter(Sender: TObject);
    procedure dbedtVlrProdExit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
    ffrmCadProduto: TfrmCadProduto;
    ffrmCadUnidade: TfrmCadUnidade;
    ffrmCadCFOP: TfrmCadCFOP;
    ffrmCadPedido_Mat: TfrmCadPedido_Mat;
    ffrmCadPedido_TipoItem: TfrmCadPedido_TipoItem;
    ffrmInformar_Tam: TfrmInformar_Tam;
    ffrmCadPedido_Itens_Imposto: TfrmCadPedido_Itens_Imposto;
    ffrmCadNCM: TfrmCadNCM;
    vCodProdutoAnt: Integer;
    vID_CFOPAnt: Integer;
    vVlr_Material: Real;
    vQtd_Material: Integer;
    vState: String;
    vID_Produto_Ant: Integer;
    vVlrDesc_Ant: Real;
    vVlrProd_Ant: Real;
    vQtd_Prod_Ant: Real;

    procedure prc_Buscar_Imposto(Auxiliar, Nome: String);
    procedure prc_Calcular_VlrItens;
    procedure prc_Calcular_SemCFOP;
    function  fnc_Erro: Boolean;
    procedure prc_Calcular_VlrMat;
    procedure prc_Gravar_mItens;
    procedure prc_Gravar_Tam;
    procedure prc_Chamar_FormTipoItem(Tipo: String);
    procedure prc_Mostrar_Foto;
    procedure prc_Chama_Form_Produto;

    function fnc_Verificar_Produto(CodProduto: Integer): Boolean;
    function fnc_Verifica_SubstTributaria: Boolean;
    function fnc_Estoque_OK(ID_Produto, ID_Cor: Integer; Tamanho: String; Qtd: Real): Boolean;

  public
    { Public declarations }
    fDMCadPedido: TDMCadPedido;
    vVlrTotalAnt, vVlrItensAnt, vVlrIPIAnt: Real;
    fDMInformar_Tam: TDMInformar_Tam;
    procedure prc_Move_Dados_Itens;
  end;

var
  frmCadOrcamento_Itens: TfrmCadOrcamento_Itens;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao, UDMUtil, USel_Unidade, uCalculo_Pedido, USenha;

{$R *.dfm}

procedure TfrmCadOrcamento_Itens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadPedido.cdsPedido_Itens.State in [dsEdit,dsInsert] then
    fDMCadPedido.cdsPedido_Itens.Cancel;
  if fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S' then
    FreeAndNil(fDMInformar_Tam);
  Action := Cafree;
end;

procedure TfrmCadOrcamento_Itens.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadPedido);
  fDMCadPedido.prc_Abrir_Produto;
  //Tamanhos
  if fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S' then
  begin
    fDMInformar_Tam := TDMInformar_Tam.Create(Self);
    if (fDMCadPedido.cdsPedido_Itens.State in [dsEdit]) and (trim(fDMCadPedido.cdsPedido_ItensTAMANHO.AsString) <> '') then
    begin
      fDMInformar_Tam.prc_Abrir_Produto_Tam(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger);
      lblTamanho.Visible       := True;
      oDBUtils.SetDataSourceProperties(dblcTamanho, fDMInformar_Tam);
      dblcTamanho.Visible := True;
      //RxDBLookupCombo8.LookupSource := fDMInformar_Tam.cdsProduto_Tam;
    end;
  end;

  vCodProdutoAnt := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
  vID_CFOPAnt    := fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger;
  //Label1.Visible := (fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger > 0);
  //RxDBLookupCombo1.Visible := (fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger > 0);
  //SpeedButton3.Visible := (fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger > 0);
  //SpeedButton5.Visible := (fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger > 0);

  vVlrTotalAnt := fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat;
  vVlrIPIAnt   := fDMCadPedido.cdsPedido_ItensVLR_IPI.AsFloat;

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
  pnlMaterial.Visible      := (fDMCadPedido.cdsParametrosINFORMA_MAT_PEDIDO.AsString = 'S');
  pnlTipoOrcamento.Visible := (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S');
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

  if vState = 'E' then
    vQtd_Prod_Ant := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat))
  else
    vQtd_Prod_Ant := StrToFloat(FormatFloat('0.0000',0));

  pnlTipo1.Visible := (fDMCadPedido.cdsParametrosDIGITACAO_PED_ITENS.AsString = '1');
  pnlTipo2.Visible := (fDMCadPedido.cdsParametrosDIGITACAO_PED_ITENS.AsString = '2');

  label1.Visible           := (fDMCadPedido.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S');
  RxDBLookupCombo1.Visible := (fDMCadPedido.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S');
  label16.Visible          := (fDMCadPedido.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S');
  RxDBLookupCombo6.Visible := (fDMCadPedido.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S');
  SpeedButton3.Visible     := (fDMCadPedido.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S');
  SpeedButton5.Visible     := (fDMCadPedido.cdsParametrosMOSTRAR_CFOP_PEDIDO.AsString = 'S');
  TS_Foto.TabVisible       := (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S');

  Label13.Visible     := (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'I');
  DBDateEdit1.Visible := (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'I');

  if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
    btnDigMaterial.Caption := 'Digitar Opções';

  gbxDesconto.Visible := (fDMCadPedido.qParametros_PedUSA_DESC_VAREJO.AsString = 'S');
  if fDMCadPedido.qParametros_PedUSA_DESC_VAREJO.AsString = 'S' then
    BitBtn3.Caption := 'Impostos';
  Panel4.Visible := (((fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger = fDMCadPedido.qParametros_ProdID_PRODUTO_GENERICO.AsInteger)
                      and (fDMCadPedido.qParametros_ProdID_PRODUTO_GENERICO.AsInteger > 0)) or (fDMCadPedido.qParametros_PedPERMITE_ALT_NOMEPROD.AsString = 'S'));
end;

procedure TfrmCadOrcamento_Itens.Panel2Enter(Sender: TObject);
var
  vVlrAux: real;
begin
  if not(fDMCadPedido.fnc_verificar_CFOP(fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger)) and (RxDBLookupCombo1.Visible) then
  begin
    RxDBLookupCombo1.SetFocus;
    exit;
  end;
  if (fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger < 1) then
    exit;
  if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
    vVlrAux := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
  if (vState = 'I') or (fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger <> vCodProdutoAnt) or (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <> vID_CFOPAnt) or
    not(fDMCadPedido.cdsPedido_Item_Tipo.IsEmpty) then
      prc_Move_Dados_Itens;
  if not(fDMCadPedido.cdsPedido_Item_Tipo.IsEmpty) and (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S') then
    fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := vVlrAux;
  if (fDMCadPedido.cdsParametrosINFORMA_MAT_PEDIDO.AsString = 'S') and (StrToFloat(FormatFloat('0.00000',vVlr_Material)) > 0) then
    fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.00000', vVlr_Material));
  if (fDMCadPedido.cdsParametrosINFORMA_MAT_PEDIDO.AsString = 'S') and (vQtd_Material > 0) then
    fDMCadPedido.cdsPedido_ItensQTD.AsInteger := vQtd_Material;
  RxDBLookupCombo2.Enabled := ((fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger <= 0) or (fDMCadPedido.cdsPedido_ItensID_NCM.IsNull));
end;

procedure TfrmCadOrcamento_Itens.prc_Buscar_Imposto(Auxiliar, Nome: String);
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

procedure TfrmCadOrcamento_Itens.prc_Move_Dados_Itens;
var
  vID_ICMS, vID_IPI: Integer;
  vPrecoAux: Real;
  vIPI_Suspenso: Boolean;
begin
  vID_ICMS := 0;
  vID_IPI  := 0;
  if fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger > 0 then
    if not fDMCadPedido.cdsCFOP.Locate('ID',fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger,[loCaseInsensitive]) then
      exit;
  if not fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]) then
    exit;
  if fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger > 0 then
  begin
    fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
    fDMCadPedido.cdsUF.Locate('UF',fDMCadPedido.cdsClienteUF.AsString,[loCaseInsensitive]);
  end;
  fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger := fDMCadPedido.cdsProdutoID_NCM.AsInteger;

  //Tamanho
  btnGrade.Visible    := ((fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') and (vState = 'I'));
  lblTamanho.Visible  := ((fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') and (vState = 'E'));
  dblcTamanho.Visible := ((fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') and (vState = 'E'));
  DBEdit2.ReadOnly := ((fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S') and (fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S')) ;
  if (fDMCadPedido.cdsParametrosUSA_GRADE.AsString = 'S') and (fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S') then
    DBEdit2.Color := clSilver
  else
    DBEdit2.Color := clWindow;
  //************

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
  end;
//  if ((fDMCadPedido.cdsCFOPGERAR_IPI.AsString = 'S') or (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <= 0)) and (fDMCadPedido.cdsProdutoID_CSTIPI.AsInteger > 0) and (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsProdutoPERC_IPI.AsFloat)) > 0)
//    and not(vIPI_Suspenso) then
//    vID_IPI := fDMCadPedido.cdsProdutoID_CSTIPI.AsInteger;
  //copiado da nota 17/12/2018
 if (fDMCadPedido.cdsCFOPGERAR_IPI.AsString = 'S') and ((fDMCadPedido.cdsProdutoID_CSTIPI.AsInteger > 0) or (fDMCadPedido.cdsTab_NCMID_CSTIPI.AsInteger > 0)) and
     ((StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsProdutoPERC_IPI.AsFloat)) > 0) or (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsTab_NCMPERC_IPI.AsFloat)) > 0))
     and not(vIPI_Suspenso) and (fDMCadPedido.cdsFilialCALCULAR_IPI.AsString = 'S') then
  begin
    vID_IPI := fDMCadPedido.cdsProdutoID_CSTIPI.AsInteger;
    //03/06/2018
    if fDMCadPedido.cdsTab_NCMID_CSTIPI.AsInteger > 0 then
      vID_IPI := fDMCadPedido.cdsTab_NCMID_CSTIPI.AsInteger;
  end;


  //*********




  if fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger > 0 then
  begin
    if vID_ICMS > 0 then
      fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger := vID_ICMS
    else
      prc_Buscar_Imposto('CST','ICMS');
    if vID_IPI > 0 then
      fDMCadPedido.cdsPedido_ItensID_CSTIPI.AsInteger := vID_IPI
    else
      prc_Buscar_Imposto('CST','IPI');
    if (fDMCadPedido.cdsFilialSIMPLES.AsString = 'S') or (fDMCadPedido.cdsCFOPGERAR_ICMS.AsString <> 'S') then
      fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat := 0
    else
    if fDMCadPedido.cdsCFOPGERAR_ICMS.AsString = 'S' then
    begin
      if (fDMCadPedido.cdsProdutoUSA_PERC_IMP_INTERESTADUAL.AsString = 'S') and (fDMCadPedido.cdsFilialUF.AsString <> fDMCadPedido.cdsUFUF.AsString) then
        fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat := fDMCadPedido.cdsFilialPERC_LISTA_CAMEX.AsFloat
      else
        fDMCadPedido.cdsPedido_itensPERC_ICMS.AsFloat := fDMCadPedido.cdsUFPERC_ICMS.AsFloat;
    end;

    if fDMCadPedido.cdsCFOPGERAR_ICMS.AsString = 'S' then
      fDMCadPedido.cdsPedido_ItensPERC_ICMS.AsFloat := fDMCadPedido.cdsUFPERC_ICMS.AsFloat;

    if (fDMCadPedido.cdsCFOPGERAR_IPI.AsString = 'S') and not(vIPI_Suspenso) and (fDMCadPedido.cdsFilialCALCULAR_IPI.AsString = 'S') then
    begin
      fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat := fDMCadPedido.cdsProdutoPERC_IPI.AsFloat;
      //14/12/2018
      if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsTab_NCMPERC_IPI.AsFloat)) > 0 then
        fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat := fDMCadPedido.cdsTab_NCMPERC_IPI.AsFloat;
    end
    else
      fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat := 0;
  end
  else
  begin
    if not(vIPI_Suspenso) and (fDMCadPedido.cdsFilialCALCULAR_IPI.AsString = 'S') then
      fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat := fDMCadPedido.cdsProdutoPERC_IPI.AsFloat
    else
      fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat := 0;
  end;

  //14/12/2018
  DBCheckBox3.Visible := (StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat)) > 0);
  if fDMCadPedido.qParametros_NFeSOMAR_IPI_NO_ICMS.AsString = 'S' then
  begin
      // Incluído 21/11/2018
    if (fDMCadPedido.qParametros_NFeSOMAR_IPI_NO_ICM_TC.AsString = 'C') and
       ((fDMCadPedido.cdsClienteTIPO_CONSUMIDOR.AsInteger = 1) or (fDMCadPedido.cdsPedidoFINALIDADE.AsString = 'C')) then
      fDMCadPedido.cdsPedido_ItensCALCULARICMSSOBREIPI.AsString := 'S'
    else
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



  //10/11/2015 Comissão por item
  if (fDMCadPedido.cdsParametrosTIPO_COMISSAO_PROD.AsString <> 'I') then
    fDMCadPedido.cdsPedido_ItensPERC_COMISSAO.AsFloat := StrToFloat(FormatFloat('0.00',0))
  else
  if (fDMCadPedido.cdsParametrosTIPO_COMISSAO_PROD.AsString = 'I') and (fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger <> vID_Produto_Ant) then
    fDMCadPedido.cdsPedido_ItensPERC_COMISSAO.AsFloat := fnc_Buscar_Comissao_Prod(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,fDMCadPedido.cdsPedidoID_VENDEDOR.AsInteger);
  //****************

  vPrecoAux := 0;
  if fDMCadPedido.cdsClienteID_TAB_PRECO.AsInteger > 0 then
  begin
    if (fDMCadPedido.qParametros_ProdPRODUTO_PRECO_COR.AsString = 'S') and (fDMCadPedido.cdsProdutoUSA_PRECO_COR.AsString = 'S') then
      vPrecoAux := DMUtil.fnc_Buscar_Preco(fDMCadPedido.cdsClienteID_TAB_PRECO.AsInteger,fDMCadPedido.cdsProdutoID.AsInteger,fDMCadPedido.cdsPedido_ItensID_COR.AsInteger,'N')
    else
      vPrecoAux := DMUtil.fnc_Buscar_Preco(fDMCadPedido.cdsClienteID_TAB_PRECO.AsInteger,fDMCadPedido.cdsProdutoID.AsInteger,0,'N');
  end;
  if StrToFloat(FormatFloat('0.0000',vPrecoAux)) > 0 then
    fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.0000',vPrecoAux))
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

  fDMCadPedido.cdsPedido_ItensUNIDADE.AsString := fDMCadPedido.cdsProdutoUNIDADE.AsString;
  if fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger > 0 then
  begin
    if fDMCadPedido.cdsTab_CSTICMS.Locate('ID',fDMCadPedido.cdsPedido_ItensID_CSTICMS.AsInteger,[loCaseInsensitive]) then
      fDMCadPedido.cdsPedido_ItensCOD_CST.AsString := fDMCadPedido.cdsTab_CSTICMSCOD_CST.AsString;
  end;
  if fDMCadPedido.cdsPedido_ItensID_CSTIPI.AsInteger > 0 then
  begin
    if fDMCadPedido.cdsTab_CSTIPI.Locate('ID',fDMCadPedido.cdsPedido_ItensID_CSTIPI.AsInteger,[loCaseInsensitive]) then
      fDMCadPedido.cdsPedido_ItensCOD_IPI.AsString := fDMCadPedido.cdsTab_CSTIPICOD_IPI.AsString;
  end;
  if fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <= 0 then
    fDMCadPedido.cdsPedido_ItensCODCFOP.AsString := ''
  else
    fDMCadPedido.cdsPedido_ItensCODCFOP.AsString := fDMCadPedido.cdsCFOPCODCFOP.AsString;
  if (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoPERC_REDUCAOICMS.AsFloat)) > 0) and (fDMCadPedido.cdsFilialSIMPLES.AsString <> 'S') and (fDMCadPedido.cdsTab_CSTICMSCOD_CST.AsString <> '00') then
    fDMCadPedido.cdsPedido_ItensPERC_TRIBICMS.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoPERC_REDUCAOICMS.AsFloat))
  else
    fDMCadPedido.cdsPedido_ItensPERC_TRIBICMS.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsTab_CSTICMSPERCENTUAL.AsFloat));

  if (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S') and (fDMCadPedido.cdsPedido_Item_Tipo.RecordCount > 0) then
  begin
    //01/04/2014
    //fDMCadPedido.cdsPedido_ItensQTD.AsFloat          := fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat;
    //fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_Item_TipoVLR_TOTAL.AsFloat / fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat));
    //fDMCadPedido.cdsPedido_ItensQTD.AsFloat          := fDMCadPedido.cdsPedido_Item_TipoQTD.AsFloat;
    //fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat));
    //24/04/2014
    if fDMCadPedido.cdsPedido_Item_TipoTIPO_ORCAMENTO.AsString = 'C' then
    begin
      fDMCadPedido.cdsPedido_ItensQTD.AsFloat          := fDMCadPedido.cdsPedido_Item_TipoQTD.AsFloat;
      fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_Item_TipoVLR_UNITARIO.AsFloat));
      fDMCadPedido.cdsPedido_ItensQTD_PECA.AsInteger         := fDMCadPedido.cdsPedido_Item_TipoQTD.AsInteger;
      fDMCadPedido.cdsPedido_ItensQTD_LANCAR_ESTOQUE.AsFloat := StrToFloat(FormatFloat('0.0000',(fDMCadPedido.cdsPedido_Item_TipoPESO.AsFloat)));
    end
    else
    begin
      fDMCadPedido.cdsPedido_ItensQTD.AsFloat          := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_Item_TipoVLR_TOTAL.AsFloat / fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsFloat));
      fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat := StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_Item_TipoVLR_KG.AsFloat));
      fDMCadPedido.cdsPedido_ItensQTD_PECA.AsInteger   := fDMCadPedido.cdsPedido_Item_TipoQTD.AsInteger;
      fDMCadPedido.cdsPedido_ItensQTD_LANCAR_ESTOQUE.AsFloat := 0;
    end;
  end;

  //02/05/2017
  if fDMCadPedido.qParametros_PedINF_LUCRATIVIDADE.AsString = 'S' then
  begin
    uCalculo_Pedido.prc_Inf_Lucratividade(fDMCadPedido);
    //Foi colocado para a unit que calcula o pedido
    //fDMCadPedido.cdsPedido_ItensPRECO_CUSTO.AsFloat  := fDMCadPedido.cdsProdutoPRECO_CUSTO.AsFloat;
    //fDMCadPedido.cdsPedido_ItensPERC_MARGEM.AsFloat  := fDMCadPedido.cdsProdutoPERC_MARGEMLUCRO.AsFloat;
    //fDMCadPedido.cdsPedido_ItensPERC_MARGEM2.AsFloat := fDMCadPedido.cdsProdutoPERC_MARGEMLUCRO.AsFloat;
  end;
  //********************
end;

procedure TfrmCadOrcamento_Itens.DBEdit2Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadOrcamento_Itens.prc_Calcular_VlrItens;
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

procedure TfrmCadOrcamento_Itens.DBEdit5Exit(Sender: TObject);
begin
  prc_Calcular_VlrItens;
end;

procedure TfrmCadOrcamento_Itens.BitBtn1Click(Sender: TObject);
var
  vFlagErro: Boolean;
  vEditar: Boolean;
  vAux: Real;
  vQtdAux: Real;
begin
  if fnc_Erro then
    exit;

  //if fDMCadPedido.cdsPedido_Itens.State in [dsEdit] then
  if vState = 'E' then
    vEditar := True
  else
    vEditar := False;

  vFlagErro := False;

  if fDMCadPedido.cdsProdutoID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger then
    fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);

  if fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <= 0 then
    fDMCadPedido.cdsPedido_ItensCODCFOP.AsString := '';

  try

    if (fDMCadPedido.qParametros_EstVERIFICA_ESTOQUE_ENT_PEDIDO.AsString = 'S') then
    begin
      if (fDMCadPedido.cdsProdutoUSA_GRADE.AsString <> 'S')
         or ((vEditar) and (StrToFloat(FormatFloat('0.0000',vQtd_Prod_Ant)) <> StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat))))  then
      begin
      //15/10/2018
        vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat));
        if (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S') and (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_LANCAR_ESTOQUE.AsFloat)) > 0) then
          vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensQTD_LANCAR_ESTOQUE.AsFloat * fDMCadPedido.cdsPedido_ItensQTD.AsFloat));
        if not fnc_Estoque_OK(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,fDMCadPedido.cdsPedido_ItensID_COR.AsInteger,
                              fDMCadPedido.cdsPedido_ItensTAMANHO.AsString,vQtdAux) then
          exit;
      end;
    end;

    if StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat)) > 0 then
      fDMCadPedido.cdsPedidoTIPO_DESCONTO.AsString := 'I';
    //15/02/2017
    if (fDMCadPedido.qParametros_ProdID_PRODUTO_GENERICO.AsInteger > 0) and
       (fDMCadPedido.qParametros_ProdID_PRODUTO_GENERICO.AsInteger = fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger) then
    else
    begin
      if trim(fDMCadPedido.qParametros_PedPERMITE_ALT_NOMEPROD.AsString) <> 'S' then
        if (trim(fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString) = '')  then
          fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsProdutoNOME.AsString
        else
        begin
          if vCodProdutoAnt <> fDMCadPedido.cdsProdutoID.AsInteger then
            fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsProdutoNOME.AsString
        end;
      if (fDMCadPedido.cdsParametrosEMPRESA_SUCATA.AsString = 'S') and (fDMCadPedido.cdsPedido_Item_Tipo.RecordCount > 0) then
        fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsProdutoNOME.AsString + ' ' + fDMCadPedido.cdsPedido_Item_TipoCOMPLEMENTO_NOME.AsString;
    end;
    if fDMCadPedido.cdsParametrosDIGITACAO_PED_ITENS.AsString = '1' then
      fDMCadPedido.cdsPedido_ItensREFERENCIA.AsString := fDMCadPedido.cdsProdutoREFERENCIA.AsString;
    if (fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger <= 0) or (fDMCadPedido.cdsPedido_ItensID_NCM.IsNull) then
      fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger := fDMCadPedido.cdsProdutoID_NCM.AsInteger;
    if fDMCadPedido.cdsTab_NCMID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger then
      fDMCadPedido.cdsTab_NCM.Locate('ID',fDMCadPedido.cdsPedido_ItensID_NCM.AsInteger,[loCaseInsensitive]);
    if (fDMCadPedido.cdsParametrosOPCAO_DTENTREGAPEDIDO.AsString = 'P') and (fDMCadPedido.cdsPedidoDTENTREGA.AsDateTime > 10) then
      fDMCadPedido.cdsPedido_ItensDTENTREGA.AsDateTime := fDMCadPedido.cdsPedidoDTENTREGA.AsDateTime;
    fDMCadPedido.cdsPedido_ItensNCM.AsString := fDMCadPedido.cdsTab_NCMNCM.AsString;

    fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat := fDMCadPedido.cdsPedido_ItensQTD.AsFloat;

    if fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <= 0 then                                          
    begin
      prc_calcular_semCFOP;
    end
    else
    if (fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger > 0) and ((fDMCadPedido.cdsProdutoUSA_GRADE.AsString <> 'S') or (vState = 'E')) then
      uCalculo_Pedido.prc_Calculo_GeralItem(fDMCadPedido,fDMCadPedido.cdsPedido_ItensQTD.AsFloat,fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat,
                                             fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat,fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat,
                                             fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat);

    fDMCadPedido.cdsPedido_ItensGRAVACAO_COM_ERRO.AsString := '';
    if (((fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <= 0) or (fDMCadPedido.cdsPedido_ItensID_CFOP.IsNull)) and (fDMCadPedido.cdsTab_NCMGERAR_ST.AsString = 'S'))
      or (fDMCadPedido.cdsCFOPSUBSTITUICAO_TRIB.AsString = 'S') then
    begin
      if not fnc_Verifica_SubstTributaria then
        exit;
    end;

    //Tamanho aqui
    if fDMCadPedido.cdsProdutoUSA_GRADE.AsString = 'S' then
    begin
      //if fDMCadPedido.cdsPedido_Itens.State in [dsEdit] then
      if vState = 'E' then
      begin
        if (fDMCadPedido.qParametros_ProdID_PRODUTO_GENERICO.AsInteger > 0) and (fDMCadPedido.qParametros_ProdID_PRODUTO_GENERICO.AsInteger = fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger) then
        else
          fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString + ' TAM. ' + fDMCadPedido.cdsPedido_ItensTAMANHO.AsString;
      end
      else
      begin
        prc_Gravar_mItens;
        if (fDMCadPedido.qParametros_ProdID_PRODUTO_GENERICO.AsInteger > 0) and (fDMCadPedido.qParametros_ProdID_PRODUTO_GENERICO.AsInteger = fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger) then
        else
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

    fDMCadPedido.cdsPedido_ItensVLR_DESCONTO_CALC.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat
                                                           + fDMCadPedido.cdsPedido_ItensVLR_DESCONTORATEIO.AsFloat));

    //02/05/2017
    if fDMCadPedido.qParametros_PedINF_LUCRATIVIDADE.AsString = 'S' then
      prc_Calcular_Lucratividade(fDMCadPedido,'C');
    //**************************

    fDMCadPedido.cdsPedido_Itens.Post;

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

  if not vFlagErro then
  begin
    if vEditar then
      Close
    else
    begin
      vID_Produto_Ant := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
      fDMCadPedido.prc_Inserir_Itens;
      if fDMCadPedido.cdsParametrosREPETIR_ULTIMO_ITEM_PED.AsString = 'S' then
        fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger := vID_Produto_Ant;
      vState := 'I';
      vVlr_Material := 0;
      vQtd_Material := 0;
      if pnlTipo1.Visible then
        RxDBLookupCombo4.SetFocus
      else
      begin
        if DBEdit10.Visible then
          DBEdit10.SetFocus
        else
          RxDBLookupCombo8.SetFocus;
      end;
    end;
  end;
end;

function TfrmCadOrcamento_Itens.fnc_Erro: Boolean;
var
  vMsgErro: String;
  vAux: Real;
  vVlrTotalAux: Real;
begin
  //Verificação de erros para não deixar gravar o item
  Result   := True;
  vMsgErro := '';
  if fDMCadPedido.cdsProdutoID.AsInteger <> fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger then
    fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
  if (fDMCadPedido.qParametros_ProdID_PRODUTO_GENERICO.AsInteger > 0) and (fDMCadPedido.qParametros_ProdID_PRODUTO_GENERICO.AsInteger = fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger) then
  begin
    if trim(fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString) = '' then
      vMsgErro := vMsgErro + #13 + '*** Quando o produto for genérido, é obrigado a informar o nome!';
  end;
  //if fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger <= 0 then
  //  vMsgErro := vMsgErro + #13 + '*** CFOP não informado!';
  if fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Produto não informado!';
  if fDMCadPedido.cdsPedido_ItensUNIDADE.AsString = '' then
    vMsgErro := vMsgErro + #13 + '*** Unidade não informada!';
  if (StrToFloat(FormatFloat('0.00000',fDMCadPedido.cdsPedido_ItensQTD.AsFloat)) <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Quantidade não informada!';
  if (StrToFloat(FormatFloat('0.000',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat)) <= 0) then
    vMsgErro := vMsgErro + #13 + '*** Valor Unitário não informado!';
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
    //04/01/2017
    vVlrTotalAux := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat * fDMCadPedido.cdsPedido_ItensQTD.AsFloat));
    //*****************
    vAux := StrToFloat(FormatFloat('0.00',(fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat / vVlrTotalAux) * 100));
    if StrToFloat(FormatFloat('0.00',vAux)) > StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsProdutoPERC_DESC_MAX.AsFloat)) then
      vMsgErro := vMsgErro + #13 + '*** % Desconto informado maior que o máximo de ' + FormatFloat('0.00##',fDMCadPedido.cdsProdutoPERC_DESC_MAX.AsFloat) + ', que esta informado no produto!';
  end;
  if vMsgErro <> '' then
  begin
    MessageDlg(vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  Result := False;
end;

procedure TfrmCadOrcamento_Itens.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadOrcamento_Itens.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadProduto := TfrmCadProduto.Create(self);
  ffrmCadProduto.ShowModal;

  FreeAndNil(ffrmCadProduto);

  SpeedButton4Click(sender);
end;

procedure TfrmCadOrcamento_Itens.SpeedButton4Click(Sender: TObject);
begin
  fDMCadPedido.cdsProduto.Close;
  fDMCadPedido.cdsProduto.Open;
end;

procedure TfrmCadOrcamento_Itens.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  vQtdAux: Real;
begin
  if (Key = Vk_F10) then
    BitBtn4Click(Sender);
end;

procedure TfrmCadOrcamento_Itens.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMCadPedido.cdsProduto.IndexFieldNames := 'REFERENCIA';
end;

procedure TfrmCadOrcamento_Itens.RxDBLookupCombo8Enter(Sender: TObject);
begin
  fDMCadPedido.cdsProduto.IndexFieldNames := 'NOME';
end;

procedure TfrmCadOrcamento_Itens.RxDBLookupCombo4Change(Sender: TObject);
var
  vQtdAux: Real;
  vID_LocalAux: Integer;
begin
  vID_LocalAux := fnc_Verificar_Local(fDMCadPedido.cdsParametrosUSA_LOCAL_ESTOQUE.AsString);
  vQtdAux := 0;
  if trim(RxDBLookupCombo4.Text) <> '' then
    vQtdAux := fnc_Buscar_Estoque(RxDBLookupCombo4.KeyValue,vID_LocalAux,0)
  else
  if trim(RxDBLookupCombo8.Text) <> '' then
    vQtdAux := fnc_Buscar_Estoque(RxDBLookupCombo8.KeyValue,vID_LocalAux,0);
  lblEstoque.Caption := FormatFloat('0.####',vQtdAux);
  Panel4.Visible := (((fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger = fDMCadPedido.qParametros_ProdID_PRODUTO_GENERICO.AsInteger)
                      and (fDMCadPedido.qParametros_ProdID_PRODUTO_GENERICO.AsInteger > 0)) or (fDMCadPedido.qParametros_PedPERMITE_ALT_NOMEPROD.AsString = 'S'));
end;

procedure TfrmCadOrcamento_Itens.SpeedButton3Click(Sender: TObject);
begin
  ffrmCadCFOP := TfrmCadCFOP.Create(self);
  ffrmCadCFOP.ShowModal;

  FreeAndNil(ffrmCadCFOP);

  SpeedButton5Click(Sender);
end;

procedure TfrmCadOrcamento_Itens.SpeedButton5Click(Sender: TObject);
begin
  fDMCadPedido.cdsCFOP.Close;
  fDMCadPedido.cdsCFOP.Open;
end;

procedure TfrmCadOrcamento_Itens.prc_Calcular_SemCFOP;
var
  vAux: Real;
begin
  fDMCadPedido.cdsPedido_ItensVLR_IPI.AsFloat := 0;
  if fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat > 0 then
  begin
    vAux := StrToFloat(FormatFloat('0.00',(fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat * fDMCadPedido.cdsPedido_ItensPERC_IPI.AsFloat) / 100));
    fDMCadPedido.cdsPedido_ItensVLR_IPI.AsFloat := vAux;
  end;
  fDMCadPedido.cdsPedidoVLR_IPI.AsFloat  := fDMCadPedido.cdsPedidoVLR_IPI.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_IPI.AsFloat - vVlrIPIAnt;

  fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat := (fDMCadPedido.cdsPedidoVLR_TOTAL.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat - vVlrTotalAnt)
                                           + (fDMCadPedido.cdsPedido_ItensVLR_IPI.AsFloat - vVlrIPIAnt);
  fDMCadPedido.cdsPedidoVLR_ITENS.AsFloat := fDMCadPedido.cdsPedidoVLR_ITENS.AsFloat + fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat - vVlrTotalAnt;
end;

procedure TfrmCadOrcamento_Itens.btnDigMaterialClick(Sender: TObject);
var
  vTipo: String;
begin
  BitBtn1.Enabled := False;
  BitBtn4.Enabled := False;

  //Ambientes
  if (fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S') then
  begin
    if (fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]) and (fDMCadPedido.cdsProdutoID_GRUPO.AsInteger > 0)) then
    begin
      try
        fDMCadPedido.qGrupo.Open;
        fDMCadPedido.qGrupo.ParamByName('ID').AsInteger := fDMCadPedido.cdsProdutoID_GRUPO.AsInteger;
        fDMCadPedido.qGrupo.Open;
        prc_Chamar_FormTipoItem(fDMCadPedido.qGrupoTIPO_PROD.AsString);
      finally
        BitBtn1.Enabled := True;
        BitBtn4.Enabled := True;
      end;
    end;
  end
  else
  begin
    try
      ffrmCadPedido_Mat := TfrmCadPedido_Mat.Create(self);
      ffrmCadPedido_Mat.fDMCadPedido := fDMCadPedido;
      ffrmCadPedido_Mat.ShowModal;
    finally
      BitBtn1.Enabled := True;
      BitBtn4.Enabled := True;
    end;
    prc_Calcular_VlrMat;
  end;
end;

procedure TfrmCadOrcamento_Itens.prc_Calcular_VlrMat;
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

procedure TfrmCadOrcamento_Itens.btnGradeClick(Sender: TObject);
begin
  ffrmInformar_Tam := TfrmInformar_Tam.Create(self);
  ffrmInformar_Tam.fDMInformar_Tam := fDMInformar_Tam;
  ffrmInformar_Tam.fDMInformar_Tam.prc_Le_Produto_Tam(fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger);
  ffrmInformar_Tam.ShowModal;
  if fDMInformar_Tam.vGravar = 'S' then
    fDMCadPedido.cdsPedido_ItensQTD.AsFloat := fDMInformar_Tam.vQtd_Grade;
  prc_Calcular_VlrItens;
end;

procedure TfrmCadOrcamento_Itens.prc_Gravar_Tam;
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
      if (fDMCadPedido.qParametros_ProdID_PRODUTO_GENERICO.AsInteger > 0) and (fDMCadPedido.qParametros_ProdID_PRODUTO_GENERICO.AsInteger = fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger) then
      else
        fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMInformar_Tam.mItensNome_Produto_Original.AsString + ' TAM. ' + fDMInformar_Tam.mTamanhoTamanho.AsString;
      fDMCadPedido.cdsPedido_ItensTAMANHO.AsString     := fDMInformar_Tam.mTamanhoTamanho.AsString;
      fDMCadPedido.cdsPedido_ItensQTD.AsFloat          := fDMInformar_Tam.mTamanhoQtd.AsFloat;
      fDMCadPedido.cdsPedido_ItensQTD_RESTANTE.AsFloat := fDMInformar_Tam.mTamanhoQtd.AsFloat;
      fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat := 0;

      uCalculo_Pedido.prc_Calculo_GeralItem(fDMCadPedido,fDMCadPedido.cdsPedido_ItensQTD.AsFloat,fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat,
                                             fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat,fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat,
                                             fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat);

      fDMCadPedido.cdsPedido_ItensVLR_DESCONTO_CALC.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat +
                                                                          fDMCadPedido.cdsPedido_ItensVLR_DESCONTORATEIO.AsFloat));

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

procedure TfrmCadOrcamento_Itens.prc_Gravar_mItens;
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
       (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'QTD_CONFERIDO')      and (fDMCadPedido.cdsPedido_Itens.Fields[x].FieldName <> 'QTD_CAIXA') then
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

procedure TfrmCadOrcamento_Itens.RxDBLookupCombo8Exit(Sender: TObject);
begin
  if RxDBLookupCombo8.Text <> '' then
    fDMCadPedido.cdsPedido_ItensREFERENCIA.AsString := fDMCadPedido.cdsProdutoREFERENCIA.AsString;
end;

procedure TfrmCadOrcamento_Itens.pnlTipo1Exit(Sender: TObject);
var
  vFinalidadeAux: String;
begin
  vFinalidadeAux := fDMCadPedido.cdsPedidoFINALIDADE.AsString;
  if trim(vFinalidadeAux) = '' then
    vFinalidadeAux := 'O';
  fDMCadPedido.cdsCliente.Locate('CODIGO',fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
  if (fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger > 0) then
  begin
    uCalculo_Pedido.prc_Posicionar_Regra_Empresa(fDMCadPedido,fDMCadPedido.cdsPedidoID_OPERACAO_NOTA.AsInteger,vFinalidadeAux);
    fDMCadPedido.cdsPedido_ItensID_CFOP.AsInteger := fDMCadPedido.vID_CFOP;
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
  if vCodProdutoAnt <> fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger then
  begin
    if fDMCadPedido.qParametros_PedPERMITE_ALT_NOMEPROD.AsString = 'S' then
      fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := fDMCadPedido.cdsProdutoNOME.AsString;
  end;
end;

procedure TfrmCadOrcamento_Itens.RxDBLookupCombo1Exit(Sender: TObject);
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

procedure TfrmCadOrcamento_Itens.DBEdit10Exit(Sender: TObject);
begin
  if (fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger > 0) and ((fDMCadPedido.cdsPedido_Itens.State in [dsInsert]) or (trim(fDMCadPedido.cdsPedido_ItensREFERENCIA.AsString) = '')) then
  begin
    if fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger <> fDMCadPedido.cdsProdutoID.AsInteger then
      fDMCadPedido.cdsProduto.Locate('ID',fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger,[loCaseInsensitive]);
    if fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger = fDMCadPedido.cdsProdutoID.AsInteger then
      fDMCadPedido.cdsPedido_ItensREFERENCIA.AsString := fDMCadPedido.cdsProdutoREFERENCIA.AsString;
  end;
end;

procedure TfrmCadOrcamento_Itens.DBEdit10KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (Trim(DBEdit10.Text) <> '') then
  begin
    if not fnc_Verificar_Produto(StrToInt(DBEdit10.Text)) then
      MessageDlg('*** Código do Produto não encontrado!', mtError, [mbOk], 0)
    else
    begin
      fDMCadPedido.cdsPedido_ItensREFERENCIA.AsString := fDMCadPedido.cdsProdutoREFERENCIA.AsString;
      DBEdit8.SetFocus;
      RxDBLookupCombo8.KeyValue := fDMCadPedido.cdsProdutoID.AsInteger;
    end;
  end;
end;

function TfrmCadOrcamento_Itens.fnc_Verificar_Produto(
  CodProduto: Integer): Boolean;
begin
  Result := False;
  if fDMCadPedido.cdsProduto.Locate('ID',CodProduto,[loCaseInsensitive]) then
    Result := True;
end;

procedure TfrmCadOrcamento_Itens.NxButton1Click(Sender: TObject);
begin
  prc_Chamar_FormTipoItem('C');
end;

procedure TfrmCadOrcamento_Itens.NxButton2Click(Sender: TObject);
begin
  prc_Chamar_FormTipoItem('R');
end;

procedure TfrmCadOrcamento_Itens.NxButton3Click(Sender: TObject);
begin
  prc_Chamar_FormTipoItem('T');
end;

procedure TfrmCadOrcamento_Itens.prc_Chamar_FormTipoItem(Tipo: String);
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
    ffrmCadPedido_TipoItem.RzPageControl1.ActivePage := ffrmCadPedido_TipoItem.TS_Chapas
  else
  if Tipo = 'R' then
    ffrmCadPedido_TipoItem.RzPageControl1.ActivePage := ffrmCadPedido_TipoItem.TS_Redondos
  else
  if Tipo = 'T' then
    ffrmCadPedido_TipoItem.RzPageControl1.ActivePage := ffrmCadPedido_TipoItem.TS_Tubos
  else //Ambientes
  if Tipo = 'P' then
    ffrmCadPedido_TipoItem.RzPageControl1.ActivePage := ffrmCadPedido_TipoItem.TS_Porta
  else
  if Tipo = 'V' then
    ffrmCadPedido_TipoItem.RzPageControl1.ActivePage := ffrmCadPedido_TipoItem.TS_Vidro;
  if fDMCadPedido.cdsParametrosEMPRESA_AMBIENTES.AsString = 'S' then
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

procedure TfrmCadOrcamento_Itens.BitBtn20Click(Sender: TObject);
begin
  OpenPictureDialog2.Execute;
  fDMCadPedido.cdsPedido_ItensEND_FOTO.AsString := OpenPictureDialog2.FileName;
  prc_Mostrar_Foto;
end;

procedure TfrmCadOrcamento_Itens.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Foto then
    prc_Mostrar_Foto;
end;

procedure TfrmCadOrcamento_Itens.prc_Mostrar_Foto;
begin
  if (fDMCadPedido.cdsPedido_ItensEND_FOTO.AsString <> '') and (FileExists(fDMCadPedido.cdsPedido_ItensEND_FOTO.AsString)) then
    Image1.Picture.LoadFromFile(fDMCadPedido.cdsPedido_ItensEND_FOTO.AsString)
  else
    Image1.Picture := nil;
end;

function TfrmCadOrcamento_Itens.fnc_Verifica_SubstTributaria: Boolean;
var
  vMSGAux: String;
begin
  vMSGAux := '';
  if (fDMCadPedido.cdsParametrosCONTROLAR_NOTIFICACAO.AsString) <> 'S' then
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

procedure TfrmCadOrcamento_Itens.BitBtn3Click(Sender: TObject);
begin
  ffrmCadPedido_Itens_Imposto := TfrmCadPedido_Itens_Imposto.Create(self);
  ffrmCadPedido_Itens_Imposto.fDMCadPedido := fDMCadPedido;
  ffrmCadPedido_Itens_Imposto.ShowModal;

  FreeAndNil(ffrmCadPedido_Itens_Imposto);
end;

procedure TfrmCadOrcamento_Itens.SpeedButton11Click(Sender: TObject);
begin
  ffrmCadNCM := TfrmCadNCM.Create(self);
  ffrmCadNCM.ShowModal;

  FreeAndNil(ffrmCadNCM);

  SpeedButton12Click(Sender);
end;

procedure TfrmCadOrcamento_Itens.SpeedButton12Click(Sender: TObject);
begin
  fDMCadPedido.cdsTab_NCM.Close;
  fDMCadPedido.cdsTab_NCM.Open;
end;

procedure TfrmCadOrcamento_Itens.SpeedButton10Click(Sender: TObject);
begin
  fDMCadPedido.cdsUnidade.Close;
  fDMCadPedido.cdsUnidade.Open;
end;

procedure TfrmCadOrcamento_Itens.SpeedButton9Click(Sender: TObject);
begin
  ffrmCadUnidade := TfrmCadUnidade.Create(self);
  ffrmCadUnidade.ShowModal;

  FreeAndNil(ffrmCadUnidade);

  SpeedButton10Click(Sender);
end;

procedure TfrmCadOrcamento_Itens.DBEdit23KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
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
        fDMCadPedido.cdsPedido_ItensUNIDADE.AsString := vUnidade_Pos;
    end;
  end;
end;

procedure TfrmCadOrcamento_Itens.prc_Chama_Form_Produto;
begin
  vCodProduto_Pos := fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger;
  vCodPessoa_Pos  := fDMCadPedido.cdsPedidoID_CLIENTE.AsInteger;
  frmSel_Produto := TfrmSel_Produto.Create(Self);
  frmSel_Produto.ShowModal;
  fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger := vCodProduto_Pos;
  if fDMCadPedido.cdsPedido_ItensID_PRODUTO.AsInteger > 0 then
  begin
    if pnlTipo1.Visible then
      RxDBLookupCombo4.SetFocus
    else
      DBEdit10.SetFocus;
  end;
  RxDBLookupCombo4Change(RxDBLookupCombo4);
end;

procedure TfrmCadOrcamento_Itens.RxDBLookupCombo4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto;
end;

procedure TfrmCadOrcamento_Itens.RxDBLookupCombo5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto;
end;

procedure TfrmCadOrcamento_Itens.RxDBLookupCombo8KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    prc_Chama_Form_Produto;
end;

procedure TfrmCadOrcamento_Itens.Panel1Exit(Sender: TObject);
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
end;

procedure TfrmCadOrcamento_Itens.dbedtPercDescExit(Sender: TObject);
var
  vAux: Real;
begin
  if (fDMCadPedido.qParametros_ProdUSA_DESC_MAXIMO.AsString = 'S') and
     (StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat)) > StrToFloat(FormatFloat('0.0000',fDMCadPedido.cdsProdutoPERC_DESC_MAX.AsFloat))) then
  begin
    MessageDlg('*** % Desconto informado maior que o máximo de ' + FormatFloat('0.00##',fDMCadPedido.cdsProdutoPERC_DESC_MAX.AsFloat) + ', que esta informado no produto!', mtInformation, [mbOk], 0);
    dbedtPercDesc.SetFocus;
  end
  else
  begin
    vAux := StrToFloat(FormatFloat('0.00', fDMCadPedido.cdsPedido_ItensQTD.AsFloat * fDMCadPedido.cdsPedido_ItensVLR_UNITARIO.AsFloat));
    fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00', vAux));
    vAux := StrToFloat(FormatFloat('0.00', (vAux * fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat) / 100));
    fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.00', vAux));
    fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00', fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat - vAux));
  end;
end;

procedure TfrmCadOrcamento_Itens.dbedtVlrDescEnter(Sender: TObject);
begin
  vVlrDesc_Ant := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat));
end;

procedure TfrmCadOrcamento_Itens.dbedtVlrDescExit(Sender: TObject);
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
      MessageDlg('*** % Desconto informado maior que o máximo de ' + FormatFloat('0.00##',fDMCadPedido.cdsProdutoPERC_DESC_MAX.AsFloat) + ', que esta informado no produto!', mtInformation, [mbOk], 0);
      dbedtVlrDesc.SetFocus;
    end;
  end;
end;

procedure TfrmCadOrcamento_Itens.dbedtVlrProdEnter(Sender: TObject);
begin
  vVlrProd_Ant := StrToFloat(FormatFloat('0.00',fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat));
end;

procedure TfrmCadOrcamento_Itens.dbedtVlrProdExit(Sender: TObject);
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
      vAux2 := StrToFloat(FormatFloat('0.0000',100 - ((fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat / vAux) * 100)));
      fDMCadPedido.cdsPedido_ItensPERC_DESCONTO.AsFloat := StrToFloat(FormatFloat('0.0000',vAux2));
      fDMCadPedido.cdsPedido_ItensVLR_DESCONTO.AsFloat  := StrToFloat(FormatFloat('0.00',vAux - fDMCadPedido.cdsPedido_ItensVLR_TOTAL.AsFloat));
    end;
  end;
end;

function TfrmCadOrcamento_Itens.fnc_Estoque_OK(ID_Produto, ID_Cor: Integer;
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

procedure TfrmCadOrcamento_Itens.DBEdit1Exit(Sender: TObject);
begin
  if trim(fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString) = '' then
    fDMCadPedido.cdsPedido_ItensNOMEPRODUTO.AsString := RxDBLookupCombo5.Text;
end;

end.
