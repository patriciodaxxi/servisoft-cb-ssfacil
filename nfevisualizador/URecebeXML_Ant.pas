unit uRecebeXML;

interface

uses
  inifiles, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, xmldom, Grids, DBGrids, DB,
  Xmlxform, ExtCtrls, StdCtrls, ComCtrls, Mask, DBCtrls, RXDBCtrl, SMDBGrid, Buttons, DBTables, ToolEdit, RxLookup, DBXpress,
  UDMRecebeXML, UCBase, URecebeXML_ConsItens, USel_Produto, URecebeXML_AlteraItem, URecebeXML_ConsOC, ShellApi, NxCollection,
  StrUtils, StdConvs, DateUtils, UDMEstoque, UDMMovimento, CurrEdit, RxDBComb, UDMCadProduto_Lote, uRecebeXML_Duplicatas;

type
  TfrmRecebeXML = class(TForm)
    OpenDialog1: TOpenDialog;
    pcDados: TPageControl;
    tsDuplicatasDeducoes: TTabSheet;
    tsNFeRefProtocolo: TTabSheet;
    dgNFeRef: TDBGrid;
    dgNFeProtocolo: TDBGrid;
    Panel2: TPanel;
    Label4: TLabel;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    edTipoPagamento: TEdit;
    edFinalidade: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    edEntradaSaida: TEdit;
    Label17: TLabel;
    edFormaEmissao: TEdit;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    Label19: TLabel;
    DBEdit14: TDBEdit;
    Label20: TLabel;
    edProcesso: TEdit;
    GroupBox3: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit16: TDBEdit;
    edCNPJEmitente: TEdit;
    edInscEmitente: TEdit;
    edUFEmitente: TEdit;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit15: TDBEdit;
    edCNPJDest: TEdit;
    edInscDest: TEdit;
    edUFDest: TEdit;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    DBEdit17: TDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit18: TDBEdit;
    Label31: TLabel;
    DBEdit19: TDBEdit;
    Label32: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit22: TDBEdit;
    Label35: TLabel;
    DBEdit23: TDBEdit;
    Label36: TLabel;
    DBEdit24: TDBEdit;
    Label37: TLabel;
    DBEdit25: TDBEdit;
    Label38: TLabel;
    DBEdit26: TDBEdit;
    Label39: TLabel;
    DBEdit27: TDBEdit;
    Label40: TLabel;
    DBEdit28: TDBEdit;
    Label43: TLabel;
    edCNPJEmitente2: TEdit;
    Label44: TLabel;
    edInscEmitente2: TEdit;
    Label41: TLabel;
    DBEdit29: TDBEdit;
    Label42: TLabel;
    DBEdit30: TDBEdit;
    Label45: TLabel;
    DBEdit31: TDBEdit;
    Label46: TLabel;
    DBEdit32: TDBEdit;
    Panel4: TPanel;
    Label47: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    DBEdit33: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    edCNPJDest2: TEdit;
    edInscDest2: TEdit;
    DBEdit49: TDBEdit;
    Label65: TLabel;
    TabSheet4: TTabSheet;
    Panel5: TPanel;
    TabSheet5: TTabSheet;
    Panel6: TPanel;
    Label62: TLabel;
    lbStatusForn: TLabel;
    Label63: TLabel;
    lbStatusCidade: TLabel;
    Label66: TLabel;
    lbStatusPais: TLabel;
    lbStatusNotaEntrada: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    lbStatusContasPagar: TLabel;
    Label72: TLabel;
    lbStatusMaterial: TLabel;
    Label74: TLabel;
    lbStatusEstoque: TLabel;
    Label64: TLabel;
    DBEdit34: TDBEdit;
    SMDBGrid1: TSMDBGrid;
    Panel7: TPanel;
    Shape1: TShape;
    Label67: TLabel;
    Shape2: TShape;
    Label79: TLabel;
    DBEdit45: TDBEdit;
    Shape3: TShape;
    Label68: TLabel;
    TabSheet6: TTabSheet;
    Label75: TLabel;
    DateEdit1: TDateEdit;
    Panel8: TPanel;
    Label80: TLabel;
    Label88: TLabel;
    DBEdit57: TDBEdit;
    Label77: TLabel;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    Label78: TLabel;
    DBEdit48: TDBEdit;
    Label81: TLabel;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    Label82: TLabel;
    Label83: TLabel;
    DBEdit52: TDBEdit;
    Label84: TLabel;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    Label85: TLabel;
    Label86: TLabel;
    DBEdit55: TDBEdit;
    Label87: TLabel;
    DBEdit56: TDBEdit;
    Label89: TLabel;
    CheckBox1: TCheckBox;
    Shape4: TShape;
    Label90: TLabel;
    UCControls1: TUCControls;
    btnAbrirXML: TBitBtn;
    btnGravarNFe: TBitBtn;
    Label76: TLabel;
    BitBtn3: TBitBtn;
    Label71: TLabel;
    ComboBox1: TComboBox;
    TabSheet7: TTabSheet;
    Panel1: TPanel;
    Label73: TLabel;
    Label92: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    edCNPJTransportadora: TEdit;
    edInscTransportadora: TEdit;
    Label93: TLabel;
    ComboBox2: TComboBox;
    Label113: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    DBEdit68: TDBEdit;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit12: TDBEdit;
    Label91: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    Label114: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    Label116: TLabel;
    cbFinalidade: TComboBox;
    Shape5: TShape;
    Label118: TLabel;
    Label119: TLabel;
    rxdbLocalEstoque: TRxDBLookupCombo;
    Label122: TLabel;
    ComboBox3: TComboBox;
    ckAtualizaPreco2: TCheckBox;
    ckAtualizaCusto2: TCheckBox;
    Label61: TLabel;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    Label94: TLabel;
    Label95: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    Label109: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label121: TLabel;
    RxDBLookupCombo8: TRxDBLookupCombo;
    Label127: TLabel;
    DBEdit78: TDBEdit;
    Label128: TLabel;
    DBEdit79: TDBEdit;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label120: TLabel;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    dbedtIDPedido: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    RxDBLookupCombo4: TRxDBLookupCombo;
    DBEdit74: TDBEdit;
    Label115: TLabel;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Label124: TLabel;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    Label125: TLabel;
    Label117: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    ckAtualizaRef: TCheckBox;
    btnConfirmar: TNxButton;
    Label48: TLabel;
    Panel9: TPanel;
    Label123: TLabel;
    GroupBox5: TGroupBox;
    Label126: TLabel;
    ceVlrFrete_Nota: TCurrencyEdit;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBEdit75: TDBEdit;
    Label129: TLabel;
    DBEdit80: TDBEdit;
    Label130: TLabel;
    DBEdit81: TDBEdit;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    SpeedButton2: TSpeedButton;
    ckUsaNome: TCheckBox;
    DBCheckBox9: TDBCheckBox;
    Label131: TLabel;
    DBEdit73: TDBEdit;
    BitBtn5: TBitBtn;
    DBCheckBox10: TDBCheckBox;
    ckAssociar: TCheckBox;
    Label132: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    NxButton1: TNxButton;
    Panel10: TPanel;
    Panel11: TPanel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Label133: TLabel;
    RxDBLookupCombo9: TRxDBLookupCombo;
    SMDBGrid2: TSMDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnGravarNFeClick(Sender: TObject);
    procedure btnAbrirXMLClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure DBEdit70Exit(Sender: TObject);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboBox1Click(Sender: TObject);
    procedure rxdbLocalEstoqueExit(Sender: TObject);
    procedure RxDBLookupCombo8Change(Sender: TObject);
    procedure DBEdit76Exit(Sender: TObject);
    procedure DBEdit76KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCheckBox3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn5Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure CurrencyEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NxButton1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
    { Private declarations }
    vCodCidade: Integer;
    vIDPais: Integer;
    vDescICMS: array[1..9] of String;
    vTipoIcms: String;
    vCSTInterno: Integer;
    vItem: Integer;
    vGravar: Boolean;
    vOpenDialog: String;
    vID_Estoque: Integer;
    vID_Mov: Integer;
    vDtEmissao: TDateTime;
    vNome_Arquivo_Danfe: String;
    vCodJaCadastrado: Integer;
    vID_Local_Estoque: Integer;
    vID_CFOP_NFCe: Integer;
    vCODCFOP_NFCe: String;
    vFilial_Local: Integer;

    ffrmRecebeXML_ConsItens: TfrmRecebeXML_ConsItens;
    ffrmSel_Produto: TfrmSel_Produto;
    ffrmRecebeXML_AlteraItem: TfrmRecebeXML_AlteraItem;
    ffrmRecebeXML_ConsOC: TfrmRecebeXML_ConsOC;
    fDMEstoque: TDMEstoque;
    fDMMovimento: TDMMovimento;
    fDMCadProduto_Lote: TDMCadProduto_Lote;
    ffrmRecebeXML_Duplicatas : TfrmRecebeXML_Duplicatas;

    procedure Le_cdsDetalhe;
    procedure Grava_mItensNota;
    procedure prc_Grava_mParc;

    procedure Procura_DadosCabecalho;
    procedure Busca_SitTrib(Codigo: String);

    function fnc_Busca_CFOP: Integer;

    procedure Move_Campos(Campo1,Campo2, Soma: String);

    procedure Busca_MaterialFornecedor;

    procedure Gravar_Fornecedor;
    procedure Gravar_Cidade;
    procedure Gravar_Pais;
    procedure Gravar_ClasFiscal;
    procedure Gravar_Unidade;

    procedure Gravar_Cliente; //Serve para a Tag = 2 (notas de sucata)

    procedure Verificar_Produto;
    procedure Ajustar_ICMS;
    procedure prc_Mover_Itens;

    procedure Gravar_Produto;
    procedure Gravar_MaterialFornecedor;
    procedure Gravar_NotaEntrada;
    procedure Gravar_NotaEntradaParc;
    procedure Gravar_NotaEntradaItens;
    procedure Gravar_Estoque;
    procedure Gravar_Movimento;
    procedure Grava_Produto_Lote; //28/10/2017

    procedure Atualiza_Preco;

    procedure prc_Abrir_qFilial(CNPJ_CPF: String);

    function fnc_NumValido(Const S: String): Integer;

    procedure Gravar_NotaFiscal_Ref;

    procedure prc_Copiar_Arquivo;
    procedure MoverArquivo(Origem, Destino,Arquivo: String);

    procedure prc_Atualiza_Ref;
    procedure Gravar_Unidade_Conv;
    procedure prc_Gravar_Produto_Uni;
    procedure prc_scroll(DataSet: TDataSet);
    procedure prc_Mostrar_Cor;

    function fnc_Item_OK: Boolean;
    function fnc_erro: Boolean;
    function fnc_Item_Inativo: Boolean;
    function fnc_Montar_PrecoCompra(Unidade: String): Real;
    function fnc_Montar_PrecoCustoTotal(Unidade: String ; CustoTotal :Boolean = True): Real;

    procedure prc_Aplicar_Margem;

    procedure prc_Monta_Grupo(Mostra_Msg: String);

    procedure prc_verifica_TipoVenda;

    //13/11/2017
    procedure prc_Verifica_Atualizacao_NCM_Custo;

    procedure prc_Ajuste_Prod_Pela_OC(PeloXML: Boolean);
    procedure prc_Abrir_OC;
    function fnc_Proxima_Ref : Integer;
    procedure prc_Gerar_Ref;

  public
    { Public declarations }
    vUsaConfigNatOper2: String;
    vCodFornecedor: Integer;

    fDMRecebeXML: TDMRecebeXML;

    function fnc_Monta_CNPJ(CNPJ: String; Qtd: Integer): String;
  end;
  
var
  frmRecebeXML: TfrmRecebeXML;

implementation

uses
  DmdDatabase, uUtilPadrao, UMenu, rsDBUtils, uNFeComandos, USel_Pessoa, USel_Grupo, USel_Produto_Cor;

{$R *.dfm}

procedure TfrmRecebeXML.Move_Campos(Campo1,Campo2, Soma: String);
var
  i: Integer;
begin
  for i:=0 to (fDMRecebeXML.cdsDetalhe.FieldCount-1) do
  begin
    if fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = Campo1 then
      fDMRecebeXML.mItensNota.FieldByName(Campo2).AsString := fDMRecebeXML.cdsDetalhe.FieldByName(Campo1).AsString;
  end;
end;

procedure TfrmRecebeXML.Busca_MaterialFornecedor;
var
  vCNPJAux: String;
  vExisteAux: Boolean;
begin
  if vCodFornecedor < 1 then
    Exit;
  if (fDMRecebeXML.qParametros_RecXMLCONTROLAR_GRAVA_PROD.AsString = 'S') and not(ckAssociar.Checked) then
    exit;
   //aqui verificar o existe
  vExisteAux := fDMRecebeXML.fnc_Abrir_Produto_Forn(vCodFornecedor,fDMRecebeXML.mItensNotaCodProduto.AsString,fDMRecebeXML.mItensNotaCodBarra.AsString);
  fDMRecebeXML.mItensNotaInativo_Produto.AsString := fDMRecebeXML.vProduto_Inativo;
  if vExisteAux then
  begin
    //10/10/2017
    if (fDMRecebeXML.cdsFornecedorCONT_CUSTO_LIQ.AsString = 'S') and (fDMRecebeXML.vGerar_CLiq = 'S') then
      fDMRecebeXML.mItensNotaGerar_CLiquido.AsString := 'S';
    //**********

    if fDMRecebeXML.qParametrosPROCURAR_POR_REF_XML.AsString = 'S' then
    begin
      fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger := fDMRecebeXML.cdsProdutoID.AsInteger;
      fDMRecebeXML.mItensNotaUsa_Cor.AsString            := fDMRecebeXML.cdsProdutoUSA_COR.AsString;
      fDMRecebeXML.mItensNotaUsa_Preco_Cor.AsString      := fDMRecebeXML.cdsProdutoUSA_PRECO_COR.AsString;
      fDMRecebeXML.mItensNotaID_Cor.AsInteger            := 0;
      fDMRecebeXML.mItensNotaPerc_Margem.AsFloat         := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsProdutoPERC_MARGEMLUCRO.AsFloat));
      if fDMRecebeXML.cdsProdutoID_GRUPO.AsInteger > 0 then
        fDMRecebeXML.mItensNotaID_Grupo.AsInteger := fDMRecebeXML.cdsProdutoID_GRUPO.AsInteger;
      fDMRecebeXML.mItensNotaGerar_Estoque.AsString := fDMRecebeXML.cdsProdutoESTOQUE.AsString;
      prc_Monta_Grupo('N');
    end
    else
    begin
      fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger := fDMRecebeXML.cdsProduto_FornID.AsInteger;
      if fDMRecebeXML.mItensNotaUnidade.AsString = fDMRecebeXML.cdsProduto_FornUNIDADE_FORN.AsString then
        fDMRecebeXML.mItensNotaItem_Unidade.AsInteger := fDMRecebeXML.cdsProduto_FornITEM_UNIDADE.AsInteger;
      fDMRecebeXML.prc_Abrir_Produto(fDMRecebeXML.cdsProduto_FornID.AsInteger);
      fDMRecebeXML.mItensNotaUsa_Cor.AsString       := fDMRecebeXML.cdsProdutoUSA_COR.AsString;
      fDMRecebeXML.mItensNotaUsa_Preco_Cor.AsString := fDMRecebeXML.cdsProdutoUSA_PRECO_COR.AsString;
      fDMRecebeXML.mItensNotaID_Cor.AsInteger       := fDMRecebeXML.cdsProduto_FornID_COR.AsInteger;
      fDMRecebeXML.mItensNotaGerar_Estoque.AsString := fDMRecebeXML.cdsProdutoESTOQUE.AsString;
      if fDMRecebeXML.mItensNotaID_Cor.AsInteger > 0 then
      begin
        fDMRecebeXML.qCor.Close;
        fDMRecebeXML.qCor.ParamByName('ID').AsInteger := fDMRecebeXML.mItensNotaID_Cor.AsInteger;
        fDMRecebeXML.qCor.Open;
        fDMRecebeXML.mItensNotaNome_Cor.AsString := fDMRecebeXML.qCorNOME.AsString;
      end;
      fDMRecebeXML.mItensNotaPerc_Margem.AsFloat := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsProdutoPERC_MARGEMLUCRO.AsFloat));
      if fDMRecebeXML.cdsProdutoID_GRUPO.AsInteger > 0 then
        fDMRecebeXML.mItensNotaID_Grupo.AsInteger := fDMRecebeXML.cdsProdutoID_GRUPO.AsInteger;
      prc_Monta_Grupo('N');
    end;
    fDMRecebeXML.mItensNotaTipoVenda.AsString      := '';
    fDMRecebeXML.mItensNotaTipoVenda_Prod.AsString := '';
    if not fDMRecebeXML.cdsProduto.IsEmpty then
    begin
      fDMRecebeXML.mItensNotaTipoVenda.AsString      := fDMRecebeXML.cdsProdutoTIPO_VENDA.AsString;
      fDMRecebeXML.mItensNotaReferencia_Int.AsString := fDMRecebeXML.cdsProdutoREFERENCIA.AsString;
      fDMRecebeXML.mItensNotaUnidadeInterno.AsString := fDMRecebeXML.cdsProdutoUNIDADE.AsString;
      //26/01/2017
      fDMRecebeXML.mItensNotaVlr_Venda.AsFloat       := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.cdsProdutoPRECO_VENDA.AsFloat));
      fDMRecebeXML.mItensNotaVlr_Custo_Prod.AsFloat  :=StrToFloat(FormatFloat('0.0000',fDMRecebeXML.cdsProdutoPRECO_CUSTO.AsFloat));
      //************
      if fDMRecebeXML.qParametrosUSA_DESCRICAODANOTA.AsString <> 'S' then
      begin
        if not(ckUsaNome.Visible) or not(ckUsaNome.Checked) then   //16/01/2018
          fDMRecebeXML.mItensNotaNomeProduto.AsString := fDMRecebeXML.cdsProdutoNOME.AsString;
      end;
    end;
    fDMRecebeXML.mItensNotaTipoVenda_Prod.AsString := fDMRecebeXML.mItensNotaTipoVenda.AsString;
    if cbFinalidade.ItemIndex <> 3 then
    begin
      case cbFinalidade.ItemIndex of
        0: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'C';
        1: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'R';
        2: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'I';
        4: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'G';
      end;
    end;
    if trim(fDMRecebeXML.mItensNotaTipoVenda.AsString) = '' then
      fDMRecebeXML.mItensNotaTipoVenda.AsString := 'G';
    prc_verifica_TipoVenda; // 09/11/2017

    //09/07/2014 - Incluido para usar a quantidade de pacote que esta cadastrada a unidade no fornecedor
    if trim(fDMRecebeXML.cdsProdutoUNIDADE.AsString) <> trim(fDMRecebeXML.mItensNotaUnidade.AsString) then
    begin
      if fDMRecebeXML.qParametrosPROCURAR_POR_REF_XML.AsString = 'S' then
      begin
        fDMRecebeXML.qProduto_Uni2.Close;
        fDMRecebeXML.qProduto_Uni2.ParamByName('ID').AsInteger          := fDMRecebeXML.cdsProdutoID.AsInteger;
        fDMRecebeXML.qProduto_Uni2.ParamByName('UNIDADE_CONV').AsString := fDMRecebeXML.mItensNotaUnidade.AsString;
        fDMRecebeXML.qProduto_Uni2.Open;
        fDMRecebeXML.mItensNotaQtdPacote.AsFloat      := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.qProduto_Uni2QTD.AsFloat));
        fDMRecebeXML.mItensNotaItem_Unidade.AsInteger := fDMRecebeXML.qProduto_Uni2ITEM_UNIDADE.AsInteger;
        if StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) > 0 then
          fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean := True;
      end
      else
      begin
        if fDMRecebeXML.cdsProduto_FornUNIDADE_FORN.AsString = fDMRecebeXML.mItensNotaUnidade.AsString then
          fDMRecebeXML.mItensNotaItem_Unidade.AsInteger := fDMRecebeXML.cdsProduto_FornITEM_UNIDADE.AsInteger;
        //26/04/2016
        if fDMRecebeXML.cdsProduto_FornITEM_UNIDADE.AsInteger > 0 then
        begin
          fDMRecebeXML.qProduto_Uni.Close;
          fDMRecebeXML.qProduto_Uni.ParamByName('ID').AsInteger           := fDMRecebeXML.cdsProdutoID.AsInteger;
          fDMRecebeXML.qProduto_Uni.ParamByName('ITEM_UNIDADE').AsInteger := fDMRecebeXML.cdsProduto_FornITEM_UNIDADE.AsInteger;
          fDMRecebeXML.qProduto_Uni.Open;
          fDMRecebeXML.mItensNotaQtdPacote.AsFloat      := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.qProduto_UniQTD.AsFloat));
          fDMRecebeXML.mItensNotaItem_Unidade.AsInteger := fDMRecebeXML.cdsProduto_FornITEM_UNIDADE.AsInteger;
          if StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) > 0 then
            fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean := True;
        end
        else
        //Foi incluido esse IF 26/04/2016
        begin
          fDMRecebeXML.qProduto_Uni2.Close;
          fDMRecebeXML.qProduto_Uni2.ParamByName('ID').AsInteger          := fDMRecebeXML.cdsProdutoID.AsInteger;
          fDMRecebeXML.qProduto_Uni2.ParamByName('UNIDADE_CONV').AsString := fDMRecebeXML.mItensNotaUnidade.AsString;
          fDMRecebeXML.qProduto_Uni2.Open;
          fDMRecebeXML.mItensNotaQtdPacote.AsFloat      := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.qProduto_Uni2QTD.AsFloat));
          fDMRecebeXML.mItensNotaItem_Unidade.AsInteger := fDMRecebeXML.qProduto_Uni2ITEM_UNIDADE.AsInteger;
          if StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) > 0 then
            fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean := True;
        end;
      end;
    end
    else
    begin
      fDMRecebeXML.mItensNotaQtdPacote.AsFloat := 0;
      if fDMRecebeXML.qParametrosPROCURAR_POR_REF_XML.AsString <> 'S' then
        fDMRecebeXML.mItensNotaItem_Unidade.AsInteger := fDMRecebeXML.cdsProduto_FornITEM_UNIDADE.AsInteger;
    end;
    fDMRecebeXML.mItensNotaQtdPacoteInterno.AsFloat := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
  end;
end;

procedure TfrmRecebeXML.FormShow(Sender: TObject);
var
  i: Integer;
begin
  fDMRecebeXML := TDMRecebeXML.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDMRecebeXML);
  pcDados.ActivePageIndex := 0;
  prc_le_Grid(SMDBGrid1,Name,fDMRecebeXML.qParametros_GeralENDGRIDS.AsString);

  fDMRecebeXML.cdsOperacao_Nota.Open;

  if (vImportar_NotaSaida) then
  begin
    Caption := 'Importar XML para Nota Fiscal';
    Label75.Caption := 'Dt.Emissão';
    DateEdit1.Date  := Date;
  end;

  Label93.Visible   := vImportar_NotaSaida;
  ComboBox2.Visible := vImportar_NotaSaida;
  if fDMRecebeXML.qParametrosGRAVAR_PROD_MAT_RECXML.AsString = 'P' then
    ComboBox1.ItemIndex := 0
  else
    ComboBox1.ItemIndex := 1;
  //ckAtualizaPreco.Checked  := (fDMRecebeXML.qParametrosATUALIZAR_PRECO.AsString = 'S');
  //ckAtualizaCusto.Checked  := (fDMRecebeXML.qParametros_NTEATUALIZAR_CUSTO.AsString = 'S');
  Label109.Visible         := (fDMRecebeXML.qParametrosUSA_CUPOM_FISCAL.AsString = 'S');
  RxDBLookupCombo5.Visible := (fDMRecebeXML.qParametrosUSA_CUPOM_FISCAL.AsString = 'S');
  fDMEstoque               := TDMEstoque.Create(Self);
  fDMMovimento             := TDMMovimento.Create(Self);
  if fDMRecebeXML.qParametros_ProdUSA_LOTE_PROD.AsString = 'S' then
    fDMCadProduto_Lote := TDMCadProduto_Lote.Create(Self);

  //Label113.Visible      := (fDMRecebeXML.qParametrosUSA_PERC_MARGEM_RECEPCAO.AsString = 'S');
  //CurrencyEdit1.Visible := (fDMRecebeXML.qParametrosUSA_PERC_MARGEM_RECEPCAO.AsString = 'S');

  Label123.Visible := (fDMRecebeXML.qParametrosUSA_PERC_MARGEM_RECEPCAO.AsString = 'S');
  DBEdit75.Visible := (fDMRecebeXML.qParametrosUSA_PERC_MARGEM_RECEPCAO.AsString = 'S');

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (SMDBGrid1.Columns[i].FieldName = 'CodCFOP_NFCe') then
      SMDBGrid1.Columns[i].Visible := (fDMRecebeXML.qParametrosUSA_NFCE.AsString = 'S');
    if (fDMRecebeXML.qParametrosINFORMAR_COR_MATERIAL.AsString <> 'S') and
       (fDMRecebeXML.qParametrosINFORMAR_COR_PROD.AsString <> 'C') then
    begin
      if (SMDBGrid1.Columns[i].FieldName = 'ID_Cor') then
        SMDBGrid1.Columns[i].Visible := False;
    end
    else
    if (fDMRecebeXML.qParametrosUSA_LOTE_CONTROLE.AsString <> 'S') and (SMDBGrid1.Columns[i].FieldName = 'Num_Lote_Controle') then
      SMDBGrid1.Columns[i].Visible := False;
    if (SMDBGrid1.Columns[i].FieldName = 'Vlr_Venda') then
      SMDBGrid1.Columns[i].Visible := (fDMRecebeXML.qParametros_RecXMLMOSTRAR_VLR_VENDA.AsString = 'S');
    if (SMDBGrid1.Columns[i].FieldName = 'Vlr_Custo_Prod') then
      SMDBGrid1.Columns[i].Visible := (fDMRecebeXML.qParametros_RecXMLMOSTRAR_VLR_VENDA.AsString = 'S');
    if (SMDBGrid1.Columns[i].FieldName = 'ID_Cor') or (SMDBGrid1.Columns[i].FieldName = 'Nome_Cor') then
      SMDBGrid1.Columns[i].Visible := ((fDMRecebeXML.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S')
                                    or (fDMRecebeXML.qParametrosINFORMAR_COR_PROD.AsString = 'C')
                                    or (fDMRecebeXML.qParametrosINFORMAR_COR_PROD.AsString = 'B'));
  end;
  Label119.Visible         := (fDMRecebeXML.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  rxdbLocalEstoque.Visible := (fDMRecebeXML.qParametrosUSA_LOCAL_ESTOQUE.AsString = 'S');
  Label120.Visible         := (fDMRecebeXML.qParametrosUSA_LOTE_CONTROLE.AsString = 'S');
  DBEdit74.Visible         := (fDMRecebeXML.qParametrosUSA_LOTE_CONTROLE.AsString = 'S');

  Label121.Visible         := (fDMRecebeXML.qParametrosUSA_NFCE.AsString = 'S');
  RxDBLookupCombo8.Visible := (fDMRecebeXML.qParametrosUSA_NFCE.AsString = 'S');

  vNome_Arquivo_Danfe   := '';

  Label129.Visible := (fDMRecebeXML.qParametros_RecXMLATUALIZAR_CEST.AsString = 'S');
  DBEdit80.Visible := (fDMRecebeXML.qParametros_RecXMLATUALIZAR_CEST.AsString = 'S');
  Label130.Visible := (fDMRecebeXML.qParametros_RecXMLATUALIZAR_CEST.AsString = 'S');
  DBEdit81.Visible := (fDMRecebeXML.qParametros_RecXMLATUALIZAR_CEST.AsString = 'S');

  ckAssociar.Visible := (fDMRecebeXML.qParametros_RecXMLCONTROLAR_GRAVA_PROD.AsString = 'S');
  ckAssociar.Checked := True;

  Label132.Visible      := (fDMRecebeXML.qParametros_RecXMLUSA_REF_SEQUENCIAL.AsString = 'S');
  CurrencyEdit2.Visible := (fDMRecebeXML.qParametros_RecXMLUSA_REF_SEQUENCIAL.AsString = 'S');
  NxButton1.Visible     := (fDMRecebeXML.qParametros_RecXMLUSA_REF_SEQUENCIAL.AsString = 'S');

  fDMRecebeXML.mItensNota.AFTERSCROLL := prc_scroll;
end;

procedure TfrmRecebeXML.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    if FileExists(vNome_Arquivo_Danfe) then
      DeleteFile(vNome_Arquivo_Danfe);
  except
  end;
  fDMRecebeXML.qParametros_Geral.Close;
  fDMRecebeXML.qParametros_Geral.Open;
  prc_Grava_Grid(SMDBGrid1,Name,fDMRecebeXML.qParametros_GeralENDGRIDS.AsString);

  Tag := 0;
  vImportar_NotaSaida := False;
  if fDMRecebeXML.qParametros_ProdUSA_LOTE_PROD.AsString = 'S' then
    FreeAndNil(fDMCadProduto_Lote);
  FreeAndNil(fDMRecebeXML);
  FreeAndNil(fDMEstoque);
  FreeAndNil(fDMMovimento);
  Action := Cafree;
end;

function TfrmRecebeXML.fnc_Monta_CNPJ(CNPJ: String; Qtd: Integer): String;
begin
  result := '';
  if Qtd = 14 then
    result := Copy(cnpj,1,2)
            + '.' + Copy(cnpj,3,3)
            + '.' + Copy(cnpj,6,3)
            + '/' + Copy(cnpj,9,4)
            + '-' + Copy(cnpj,13,2)
  else
    result := Copy(cnpj,1,3)
            + '.' + Copy(cnpj,4,3)
            + '.' + Copy(cnpj,7,3)
            + '-' + Copy(cnpj,10,2);
end;

procedure TfrmRecebeXML.Le_cdsDetalhe;
begin
  fDMRecebeXML.mItensNota.EmptyDataSet;
  fDMRecebeXML.mParc.EmptyDataSet;

  fDMRecebeXML.cdsDetalhe.First;
  while not fDMRecebeXML.cdsDetalhe.Eof do
  begin
    Grava_mItensNota;

    fDMRecebeXML.cdsDetalhe.Next;
  end;


  fDMRecebeXML.cdsParcelas.First;
  while not fDMRecebeXML.cdsParcelas.Eof do
  begin
    prc_Grava_mParc;

    fDMRecebeXML.cdsParcelas.Next;
  end;

end;

procedure TfrmRecebeXML.Grava_mItensNota;
var
  i: Integer;
  vContadorIcms: Integer;
  vTexto: String;
  vPosIni: Integer;
  vPosStr: String;
  vQtdAux: Real;
  vTexto2: String;
  vFlag: Boolean;
begin
  fDMRecebeXML.mItensNota.Insert;
  fDMRecebeXML.mItensNotaItem.AsInteger              := fDMRecebeXML.cdsDetalhenItem.AsInteger;
  fDMRecebeXML.mItensNotaCodProduto.AsString         := fDMRecebeXML.cdsDetalhecProd.AsString;
  fDMRecebeXML.mItensNotaNumNota.AsInteger           := fDMRecebeXML.cdsCabecalhonNF.AsInteger;
  fDMRecebeXML.mItensNotaSerie.AsString              := fDMRecebeXML.cdsCabecalhoserie.AsString;
  fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger := 0;
  fDMRecebeXML.mItensNotaReferencia_Int.AsString     := '';
  fDMRecebeXML.mItensNotaCodCor.AsInteger            := 0;
  fDMRecebeXML.mItensNotaCodGrade.AsInteger          := 0;
  fDMRecebeXML.mItensNotaPosicao.AsInteger           := 0;
  fDMRecebeXML.mItensNotaTamanho.AsString            := '';
  fDMRecebeXML.mItensNotaNomeCor.AsString            := '';
  fDMRecebeXML.mItensNotaCodFornecedor.AsInteger     := vCodFornecedor;
  fDMRecebeXML.mItensNotaQtd.AsFloat                 := fDMRecebeXML.cdsDetalheqCom.AsFloat;
  fDMRecebeXML.mItensNotaVlrUnitario.AsFloat         := fDMRecebeXML.cdsDetalhevUnCom.AsFloat;
  fDMRecebeXML.mItensNotaVlr_Custo_Prod.AsFloat      := fDMRecebeXML.cdsDetalhevUnCom.AsFloat;
  fDMRecebeXML.mItensNotaVlrTotal.AsFloat            := fDMRecebeXML.cdsDetalhevProd.AsFloat;
  fDMRecebeXML.mItensNotaNomeProduto.AsString        := fDMRecebeXML.cdsDetalhexProd.AsString;
  fDMRecebeXML.mItensNotaGerar_Estoque.AsString      := 'S';
  fDMRecebeXML.mItensNotaCodBarra.AsString  := '';
  fDMRecebeXML.mItensNotaCodBarra2.AsString := '';
  if (trim(fDMRecebeXML.cdsDetalhecEAN.AsString) <> '') and (copy(fDMRecebeXML.cdsDetalhecEAN.AsString,1,3) <> 'SEM') then
  begin
    fDMRecebeXML.mItensNotaCodBarra.AsString := fDMRecebeXML.cdsDetalhecEAN.AsString;
    if (trim(fDMRecebeXML.cdsDetalhecEANTrib.AsString) <> '') and (copy(fDMRecebeXML.cdsDetalhecEANTrib.AsString,1,3) <> 'SEM') then
      fDMRecebeXML.mItensNotaCodBarra2.AsString := fDMRecebeXML.cdsDetalhecEANTrib.AsString;
  end;

  //03/08/2016
  fDMRecebeXML.mItensNotaObs_Complementar.AsString := '';
  if fDMRecebeXML.qParametros_RecXMLPROCURAR_REM_NOME_PROD.AsString = 'S' then
  begin
    vTexto := fDMRecebeXML.mItensNotaNomeProduto.AsString;
    i := posex('REM: ',vTexto);
    if i > 0 then
    begin
      vTexto2 := copy(vTexto,i,Length(vTexto)-i+1);
      fDMRecebeXML.mItensNotaObs_Complementar.AsString := vTexto2;
      vTexto  := copy(vTexto,1,i-1);
      fDMRecebeXML.mItensNotaNomeProduto.AsString := TrimLeft(vTexto);
    end;
  end;

  //*******************
  fDMRecebeXML.mItensNotaNCM.AsString               := fDMRecebeXML.cdsDetalheNCM.AsString;
  fDMRecebeXML.mItensNotaID_NCM.AsInteger           := fDMRecebeXML.fnc_Abrir_NCM(fDMRecebeXML.cdsDetalheNCM.AsString);
  if fDMRecebeXML.mItensNotaID_NCM.AsInteger > 0 then
    fDMRecebeXML.mItensNotaCEST_Interno.AsString := fDMRecebeXML.cdsNCMCOD_CEST.AsString;
  fDMRecebeXML.mItensNotaCEST.AsString              := fDMRecebeXML.cdsDetalheCEST.AsString;
  fDMRecebeXML.mItensNotaCFOP.AsString              := fDMRecebeXML.cdsDetalheCFOP.AsString;
  fDMRecebeXML.mItensNotaCFOPOriginal.AsString      := fDMRecebeXML.cdsDetalheCFOP.AsString;
  fDMRecebeXML.mItensNotaQtdPacote.AsFloat          := 0;
  fDMRecebeXML.mItensNotaQtdPacoteInterno.AsInteger := 0;

  fDMRecebeXML.mItensNotaConversorUnidade.AsFloat   := 0;
  fDMRecebeXML.mItensNotaUnidade.AsString           := UpperCase(fDMRecebeXML.cdsDetalheuCom.AsString);
  fDMRecebeXML.mItensNotaUnidadeInterno.AsString    := UpperCase(fDMRecebeXML.cdsDetalheuCom.AsString);
  fDMRecebeXML.mItensNotaVlr_Venda.AsFloat          := 0;
  fDMRecebeXML.mItensNotaVlr_Custo_Prod.AsFloat     := 0;
  fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean := False;

  fDMRecebeXML.mItensNotaID_Grupo.Clear;
  fDMRecebeXML.mItensNotaNome_Grupo.AsString := '';

  Busca_MaterialFornecedor;

  fDMRecebeXML.mItensNotaCFOPInterno.AsInteger  := fnc_Busca_CFOP;
  fDMRecebeXML.mItensNotaID_CFOP_NFCe.AsInteger := vID_CFOP_NFCe;
  fDMRecebeXML.mItensNotaCodCFOP_NFCe.AsString  := vCODCFOP_NFCe;

  if fDMRecebeXML.qDeParaID_SITTRIB_CF.AsInteger > 0 then
  begin
    fDMRecebeXML.mItensNotaID_SitTrib_CF.AsInteger := fDMRecebeXML.qDeParaID_SITTRIB_CF.AsInteger;
    fDMRecebeXML.mItensNotaCod_SitTrib_CF.AsString := fDMRecebeXML.qDeParaCOD_SITTRIB_CF.AsString;
  end;
  if fDMRecebeXML.mItensNotaCFOPInterno.AsInteger > 0 then
    fDMRecebeXML.mItensNotaCFOP.AsString := fDMRecebeXML.qCFOPCODCFOP.AsString
  else
    fDMRecebeXML.mItensNotaCFOP.AsString := '';

  fDMRecebeXML.mItensNotaNumPedido.AsString     := fDMRecebeXML.cdsDetalhexPed.AsString;
  fDMRecebeXML.mItensNotaItemPedido.AsInteger   := fDMRecebeXML.cdsDetalhenItemPed.AsInteger;
  vTexto2 := Monta_Numero(fDMRecebeXML.cdsDetalhexPed.AsString,0);
  if (fDMRecebeXML.mItensNotaItemPedido.AsInteger > 0) and (trim(vTexto2) <> '') and (fDMRecebeXML.qParametros_RecXMLUSA_OC_XML.AsString = 'S') then
  begin
    try
      prc_Abrir_OC;
      if (fDMRecebeXML.cdsOCID.AsInteger > 0) and (fDMRecebeXML.cdsOCUSA_OC_XML.AsString = 'S') then
      begin
        fDMRecebeXML.prc_Move_Dados_Da_OC;
        prc_Ajuste_Prod_Pela_OC(True);
      end;
    except
    end;
  end;
  fDMRecebeXML.mItensNotaInfAdicionais.AsString := fDMRecebeXML.cdsDetalheinfAdProd.AsString;

  vTexto  := Copy(fDMRecebeXML.cdsDetalheinfAdProd.AsString,1,250);
  fDMRecebeXML.mItensNotaNumLote.AsString := '';

  vCSTInterno := 0;
  vTipoIcms   := '';
  case fDMRecebeXML.cdsCabecalhoCRT.AsInteger of
    3: vContadorIcms := 9; 
    1,2: vContadorIcms := 6;
  end;
  i := 0;
  if StrToFloat(FormatFloat('0.0000',fDMRecebeXML.cdsDetalhevISSQN.AsFloat)) > 0 then
  begin
    vTipoIcms := 'SER';
    fDMRecebeXML.mItensNotaPerc_ISSQN.AsFloat := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.cdsDetalhevAliq.AsFloat));
    fDMRecebeXML.mItensNotaVlr_ISSQN.AsFloat  := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsDetalhevISSQN.AsFloat));
  end;

  try
    if vTipoIcms <> 'SER' then
    begin
      while (vTipoIcms = '') or (i <= vContadorIcms) do
      begin
        inc(i);
        if Trim(fDMRecebeXML.cdsDetalhe.FieldByName(vDescICMS[i]+'Orig').AsString) <> '' then
          vTipoIcms := vDescICMS[i];
      end;
    end;
  except
    begin
      i         := 0;
      vTipoIcms := '';
    end;
  end;

  if (fDMRecebeXML.cdsCabecalhoCRT.AsInteger = 3) and (vTipoIcms <> 'SER') then
  begin
    if vTipoIcms <> '' then
    begin
      //22/10/2016 tirado o IF
      //if  fDMRecebeXML.cdsCabecalhoenderEmit_cPais.AsString = '1058' then
      //  fDMRecebeXML.mItensNotaOrigem.AsString  := '0'
      //else
        fDMRecebeXML.mItensNotaOrigem.AsString  := fDMRecebeXML.cdsDetalhe.FieldByName(vTipoIcms+'Orig').AsString;
      busca_SitTrib(fDMRecebeXML.cdsDetalhe.FieldByName(vTipoIcms+'CST').AsString);
      fDMRecebeXML.mItensNotaCodSitTribInterno.AsInteger := vCSTInterno;
      fDMRecebeXML.mItensNotaCodSitTrib.AsString         := fDMRecebeXML.cdsDetalhe.FieldByName(vTipoIcms+'CST').AsString;
      Move_Campos(vTipoIcms+'ModBC','ModICMS','N');
      Move_Campos(vTipoIcms+'vBC','BaseIcms','N');
      Move_Campos(vTipoIcms+'pICMS','AliqIcms','N');
      Move_Campos(vTipoIcms+'vICMS','VlrIcms','N');
      Move_Campos(vTipoIcms+'ModBCST','ModIcmsST','N');
      Move_Campos(vTipoIcms+'pMVAST','PercMVAST','N');
      Move_Campos(vTipoIcms+'pRedBCST','PercRedBCST','N');
      Move_Campos(vTipoIcms+'vBCST','BaseCST','N');
      Move_Campos(vTipoIcms+'pICMSST','PercIcmsST','N');
      Move_Campos(vTipoIcms+'vICMSST','VlrIcmsST','N');
      Move_Campos(vTipoIcms+'pRedBC','PercRedIcms','N');
      Move_Campos(vTipoIcms+'vBCSTRet','BaseCSTRet','N');
      Move_Campos(vTipoIcms+'vICMSSTRet','VlrIcmsCSTRet','N');
      if fDMRecebeXML.mItensNotaOrigem.AsString = '' then
        fDMRecebeXML.mItensNotaOrigem.AsString := '0';
    end
    else
      //22/10/2016  mexendo neste if  na Pramel da muitos erros, pois não é tratado estes campos
      if fDMRecebeXML.cdsDetalheICMSST_CST.AsInteger <> 41 then
        ShowMessage('Verificar a CST ICMS!')
      else
      //if fDMRecebeXML.cdsDetalheICMSST_CST.AsInteger = 41 then
      begin
        fDMRecebeXML.mItensNotaOrigem.AsString := fDMRecebeXML.cdsDetalheICMSST_orig.AsString;
        Busca_SitTrib(fDMRecebeXML.cdsDetalheICMSST_CST.AsString);
        fDMRecebeXML.mItensNotaCodSitTribInterno.AsInteger := vCSTInterno;
        fDMRecebeXML.mItensNotaCodSitTrib.AsString         := fDMRecebeXML.cdsDetalheICMSST_CST.AsString;
        fDMRecebeXML.mItensNotaModICMS.AsString            := fDMRecebeXML.cdsDetalhecMod.AsString; //ver aqui
        fDMRecebeXML.mItensNotaBaseIcms.AsFloat            := 0;
        fDMRecebeXML.mItensNotaAliqCofins.AsFloat          := 0;
        fDMRecebeXML.mItensNotaVlrIcms.AsFloat             := 0;
        fDMRecebeXML.mItensNotaModIcmsST.AsString          := '';
        fDMRecebeXML.mItensNotaBaseCSTRet.AsFloat          := fDMRecebeXML.cdsDetalheICMSST_vBCSTRet.AsFloat;
        fDMRecebeXML.mItensNotaVlrIcmsCSTRet.AsFloat       := fDMRecebeXML.cdsDetalheICMSST_vICMSSTRet.AsFloat;

        //Move_Campos(vTipoIcms+'pMVAST','PercMVAST','N');
        //Move_Campos(vTipoIcms+'pRedBCST','PercRedBCST','N');
        //Move_Campos(vTipoIcms+'vBCST','BaseCST','N');
        //Move_Campos(vTipoIcms+'pICMSST','PercIcmsST','N');
        //Move_Campos(vTipoIcms+'vICMSST','VlrIcmsST','N');
        //Move_Campos(vTipoIcms+'pRedBC','PercRedIcms','N');
      end;
  end
  else
  if (vTipoIcms <> 'SER') then
  begin
    //900 não foi tratado os campos que estão desabilitados
    //PCIMS e VICMS
    if vTipoIcms <> '' then
    begin
      //22/10/2016  Tirado o IF
      //if  fDMRecebeXML.cdsCabecalhoenderEmit_cPais.AsString = '1058' then
      //  fDMRecebeXML.mItensNotaOrigem.AsString  := '0'
      //else
        fDMRecebeXML.mItensNotaOrigem.AsString  := fDMRecebeXML.cdsDetalhe.FieldByName(vTipoIcms+'Orig').AsString;
      busca_SitTrib(fDMRecebeXML.cdsDetalhe.FieldByName(vTipoIcms+'CSOSN').AsString);
      fDMRecebeXML.mItensNotaCodSitTribInterno.AsInteger := vCSTInterno;
      fDMRecebeXML.mItensNotaCodSitTrib.AsString         := fDMRecebeXML.cdsDetalhe.FieldByName(vTipoIcms+'CSOSN').AsString;
      //Move_Campos(vTipoIcms+'ModBC','ModICMS','N');
      //Move_Campos(vTipoIcms+'vBC','BaseIcms','N');
      Move_Campos(vTipoIcms+'pCredSN','AliqIcms','N');
      Move_Campos(vTipoIcms+'vCredIcmsSN','VlrIcms','N');
      Move_Campos(vTipoIcms+'ModBCST','ModIcmsST','N');
      Move_Campos(vTipoIcms+'pMVAST','PercMVAST','N');
      Move_Campos(vTipoIcms+'pRedBCST','PercRedBCST','N');
      Move_Campos(vTipoIcms+'vBCST','BaseCST','N');
      Move_Campos(vTipoIcms+'pICMSST','PercIcmsST','N');
      Move_Campos(vTipoIcms+'vICMSST','VlrIcmsST','N');
      ///Move_Campos(vTipoIcms+'pRedBC','PercRedIcms');
      Move_Campos(vTipoIcms+'vBCSTRet','BaseCSTRet','N');
      Move_Campos(vTipoIcms+'vICMSSTRet','VlrIcmsCSTRet','N');
    end;
  end;

  if vImportar_NotaSaida then
    prc_Mover_Itens
  else
  begin
    fDMRecebeXML.mItensNotaCodCSTIPI.AsString := fDMRecebeXML.cdsDetalheIPITrib_CST.AsString;


  end;

  fDMRecebeXML.mItensNotaAliqIPI.AsFloat      := fDMRecebeXML.cdsDetalhepIPI.AsFloat;
  fDMRecebeXML.mItensNotaVlrIPI.AsFloat       := fDMRecebeXML.cdsDetalhevIPI.AsFloat;
  fDMRecebeXML.mItensNotaVlrDesconto.AsFloat  := fDMRecebeXML.cdsDetalhevDesc.AsFloat;
  fDMRecebeXML.mItensNotaVlrFrete.AsFloat     := fDMRecebeXML.cdsDetalhevFrete.AsFloat;
  fDMRecebeXML.mItensNotaGravarNovo.AsBoolean := False;

  //09/07/2014 - Foi tirado pois agora vai buscar da tabela fornecedor para ver a unidade que este usa,
  //se não existir na tabela de fornecedor o usuário vai ter que escolher qual unidade é
  {if (fDMRecebeXML.mItensNotaUnidade.AsString <> fDMRecebeXML.mItensNotaUnidadeInterno.AsString)
     and (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) <= 0)
     and (fDMRecebeXML.qParametrosUSA_QTDPACOTE_NTE.AsString = 'S') then
  begin
    fDMRecebeXML.qUnidade.Close;
    fDMRecebeXML.qUnidade.ParamByName('UNIDADE').AsString := fDMRecebeXML.mItensNotaUnidade.AsString;
    fDMRecebeXML.qUnidade.Open;
    if fDMRecebeXML.qUnidadeCONVERSOR.AsFloat > 0 then
    begin
      vQtdAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.qUnidadeCONVERSOR.AsFloat * fDMRecebeXML.mItensNotaQtd.AsFloat));
      fDMRecebeXML.mItensNotaQtdPacote.AsFloat        := StrToFloat(FormatFloat('0.00000',vQtdAux));
      fDMRecebeXML.mItensNotaConversorUnidade.AsFloat := StrToFloat(FormatFloat('0.00000', fDMRecebeXML.qUnidadeCONVERSOR.AsFloat));
    end;
  end;}

  if vUsaConfigNatOper2 = 'S' then
    Ajustar_ICMS;

  //Busca_MaterialFornecedor;

  //13/11/2017  Verifica se atualiza a NCM ou o Preço de custo
  prc_Verifica_Atualizacao_NCM_Custo;
  //**********************

  case cbFinalidade.ItemIndex of
    0: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'C';
    1: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'R';
    2: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'I';
    4: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'G';
  end;
  if not(fDMRecebeXML.mItensNota.State in [dsedit,dsInsert]) then
    fDMRecebeXML.mItensNota.Edit;

  //23/01/2018
  try
    for i := 0 to fDMRecebeXML.cdsDetalhe.FieldCount-1 do
    begin
      if not(fDMRecebeXML.cdsDetalhe.Fields[i].IsNull) then
      begin
        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISAliq_pPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISOutr_pPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISQtde_vAliqProd') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'pPIS') then
          fDMRecebeXML.mItensNotaAliqPIS.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value
        else
        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISAliq_vPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISOutr_vPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISQtde_vPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'vPIS') then
          fDMRecebeXML.mItensNotaVlrPis.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value
        else
        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSAliq_pCOFINS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSOutr_pCOFINS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSQtde_vAliqProd') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'pCOFINS') then
          fDMRecebeXML.mItensNotaAliqCofins.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value
        else
        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSAliq_vCOFINS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSOutr_vCOFINS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSQtde_vCOFINS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'vCOFINS') then
          fDMRecebeXML.mItensNotaVlrCofins.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value;

        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISAliq_pPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISAliq_pPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISAliq_pPIS') then
          fDMRecebeXML.mItensNotaCodPIS.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value;
        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSAliq_pPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSAliq_pPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSAliq_pPIS') then
          fDMRecebeXML.mItensNotaCodPIS.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value;
        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISAliq_pPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISOutr_pPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISQtde_vAliqProd') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'pPIS') then
          fDMRecebeXML.mItensNotaAliqPIS.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value
        else
        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISAliq_vPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISOutr_vPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'PISQtde_vPIS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'vPIS') then
          fDMRecebeXML.mItensNotaVlrPis.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value
        else
        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSAliq_pCOFINS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSOutr_pCOFINS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSQtde_vAliqProd') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'pCOFINS') then
          fDMRecebeXML.mItensNotaAliqCofins.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value
        else
        if (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSAliq_vCOFINS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSOutr_vCOFINS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'COFINSQtde_vCOFINS') or
           (fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = 'vCOFINS') then
          fDMRecebeXML.mItensNotaVlrCofins.AsFloat := fDMRecebeXML.cdsDetalhe.Fields[i].Value;
      end;
    end;
  except
  end;
  //*******************************

  prc_verifica_TipoVenda;

  fDMRecebeXML.mItensNotaPreco_Custo_Total.AsFloat := StrToFloat(FormatFloat('0.00000',fnc_Montar_PrecoCustoTotal(fDMRecebeXML.mItensNotaUnidadeInterno.AsString)));

  fDMRecebeXML.mItensNota.Post;
end;

procedure TfrmRecebeXML.Procura_DadosCabecalho;
begin
  lbStatusForn.Color   := clMoneyGreen;
  lbStatusCidade.Color := clMoneyGreen;
  lbStatusPais.Color   := clMoneyGreen;

  vCodFornecedor := 0;
  vCodCidade     := 0;
  vIDPais        := 0;
  vFilial_Local  := 0;

  prc_Abrir_qFilial(edCNPJDest.Text);
  if vFilial_Local <= 0 then
    prc_Abrir_qFilial(fDMRecebeXML.cdsCabecalhodest_CNPJ.AsString);
  if vFilial_Local <= 0 then
      prc_Abrir_qFilial(fDMRecebeXML.cdsCabecalhodest_CPF.AsString);

  ckAssociar.Checked := True;
  if fDMRecebeXML.fnc_Abrir_Fornecedor(edCNPJEmitente.Text) then
  begin
    vCodFornecedor := fDMRecebeXML.cdsFornecedorCODIGO.AsInteger;
    lbStatusForn.Caption := 'Encontrado - Código Interno: ' + fDMRecebeXML.cdsFornecedorCODIGO.AsString;
    if (fDMRecebeXML.qParametros_RecXMLCONTROLAR_GRAVA_PROD.AsString = 'S') then
      ckAssociar.Checked := (fDMRecebeXML.cdsFornecedorASSOCIAR_PROD.AsString = 'S');
  end
  else
  begin
    lbStatusForn.Caption    := ' NÃO ENCONTRADO ';
    lbStatusForn.Color      := clRed;
    lbStatusForn.Font.Color := clWhite;
  end;

  if fDMRecebeXML.fnc_Abrir_Cidade(fDMRecebeXML.cdsCabecalhoenderEmit_cMun.AsString) then
  begin
    vCodCidade := fDMRecebeXML.cdsCidadeID.AsInteger;
    lbStatusCidade.Caption := 'Encontrada - Código Interno: ' + fDMRecebeXML.cdsCidadeID.AsString;
  end
  else
  begin
    lbStatusCidade.Caption := ' NÃO ENCONTRADA ';
    lbStatusCidade.Color   := clRed;
    lbStatusCidade.Font.Color := clWhite;
  end;

  if fDMRecebeXML.fnc_Abrir_Pais(fDMRecebeXML.cdsCabecalhoenderEmit_cPais.AsString) then
  begin
    vIDPais := fDMRecebeXML.cdsPaisID.AsInteger;
    lbStatusPais.Caption := 'Encontrado - Código Interno: ' + fDMRecebeXML.cdsPaisID.AsString;
  end
  else
  begin
    lbStatusPais.Caption := ' NÃO ENCONTRADO ';
    lbStatusPais.Color   := clRed;
    lbStatusPais.Font.Color := clWhite;
  end;

  if fDMRecebeXML.cdsCabecalhoCRT.AsInteger = 3 then
  begin
    vDescICMS[1] := 'ICMS00_';
    vDescICMS[2] := 'ICMS10_';
    vDescICMS[3] := 'ICMS20_';
    vDescICMS[4] := 'ICMS30_';
    vDescICMS[5] := 'ICMS40_';
    vDescICMS[6] := 'ICMS51_';
    vDescICMS[7] := 'ICMS60_';
    vDescICMS[8] := 'ICMS70_';
    vDescICMS[9] := 'ICMS90_';
  end
  else
  begin
    vDescICMS[1] := 'ICMSSN101_';
    vDescICMS[2] := 'ICMSSN102_';
    vDescICMS[3] := 'ICMSSN201_';
    vDescICMS[4] := 'ICMSSN202_';
    vDescICMS[5] := 'ICMSSN500_';
    vDescICMS[6] := 'ICMSSN900_';
  end;

  if vFilial_Local = 0 then
  begin
    Label4.Caption := 'Nota Não Pertence a Empresa';
    Label4.Visible := True;
  end;

  //08/04/2015
  Label91.Visible          := ((vFilial <= 0) or (fDMRecebeXML.qParametros_GeralUSA_TRIANGULAR.AsString = 'S'));
  RxDBLookupCombo1.Visible := ((vFilial <= 0) or (fDMRecebeXML.qParametros_GeralUSA_TRIANGULAR.AsString = 'S'));
  SpeedButton1.Visible     := ((vFilial <= 0) or (fDMRecebeXML.qParametros_GeralUSA_TRIANGULAR.AsString = 'S'));
  Label114.Visible         := (vFilial_Local <= 0);
  RxDBLookupCombo6.Visible := (vFilial_Local <= 0);
  if fDMRecebeXML.cdsCliente.Locate('CNPJ_CPF',edCNPJDest2.Text, ([LocaseInsensitive])) then
    RxDBLookupCombo1.KeyValue := fDMRecebeXML.cdsClienteCODIGO.AsInteger;
  if (fDMRecebeXML.cdsFilial.RecordCount = 1) and (vFilial_Local > 0) then
    RxDBLookupCombo6.KeyValue := fDMRecebeXML.cdsFilialID.AsInteger
  else
    RxDBLookupCombo6.ClearValue;
  //***********
end;

procedure TfrmRecebeXML.Busca_SitTrib(Codigo: String);
begin
  if Codigo = '0' then
    Codigo := '00';

  if fDMRecebeXML.cdsTab_CSTICMS.Locate('COD_CST',Codigo, ([LocaseInsensitive])) then
    vCSTInterno := fDMRecebeXML.cdsTab_CSTICMSID.AsInteger;
end;

function TfrmRecebeXML.fnc_Busca_CFOP: Integer;
var
  vCodNatOper: String;
  vTipo: String;
  vFlag: Integer;
begin
  Result := 0;
  vCodNatOper   := fDMRecebeXML.cdsDetalheCFOP.AsString;
  vID_CFOP_NFCe := 0;
  vCODCFOP_NFCe := '';

  vTipo := trim(fDMRecebeXML.mItensNotaTipoVenda.AsString);
  if trim(vTipo) = '' then
    vTipo := 'G';
  vFlag := 0;
  while vFlag = 0 do
  begin
    if fDMRecebeXML.qDePara.Locate('COD_CFOP_ENT;TIPO_PRODUTO',VarArrayOf([vCodNatOper,vTipo]),[locaseinsensitive]) then
    begin
      vCodNatOper   := fDMRecebeXML.qDeParaCOD_CFOP_GRA.AsString;
      vID_CFOP_NFCe := fDMRecebeXML.qDeParaID_CFOP_PROD_NFCE.AsInteger;
      vCODCFOP_NFCe := fDMRecebeXML.qDeParaCOD_CFOP_PROD_NFCE.AsString;
      vFlag       := 2;
    end
    else
    if vTipo <> 'G' then
      vTipo := 'G'
    else
    if vTipo = 'G' then
      vFlag := 1;
  end;

  if vFlag <> 2 then
  begin
    if not(vImportar_NotaSaida) or (ComboBox2.ItemIndex = 1) then
    begin
      if copy(vCodNatOper,1,1) = '5' then
        vCodNatOper := '1' + copy(vCodNatOper,2,3)
      else
      if copy(vCodNatOper,1,1) = '6' then
        vCodNatOper := '2' + copy(vCodNatOper,2,3)
      else
      if copy(vCodNatOper,1,1) = '7' then
        vCodNatOper := '3' + copy(vCodNatOper,2,3);
    end;
  end;

  if fDMRecebeXML.cdsCabecalhoCRT.AsInteger = 3 then
    vTipo := 'G'
  else
    vTipo := 'S';

  fDMRecebeXML.qCFOP.Close;
  fDMRecebeXML.qCFOP.ParamByName('CODCFOP').AsString      := vCodNatOper;
  fDMRecebeXML.qCFOP.ParamByName('TIPO_EMPRESA').AsString := vTipo;
  fDMRecebeXML.qCFOP.Open;
  if not fDMRecebeXML.qCFOP.IsEmpty then
    Result := fDMRecebeXML.qCFOPID.AsInteger
  else
  begin
    vTipo := 'A';
    fDMRecebeXML.qCFOP.Close;
    fDMRecebeXML.qCFOP.ParamByName('CODCFOP').AsString      := vCodNatOper;
    fDMRecebeXML.qCFOP.ParamByName('TIPO_EMPRESA').AsString := vTipo;
    fDMRecebeXML.qCFOP.Open;
    if not fDMRecebeXML.qCFOP.IsEmpty then
      Result := fDMRecebeXML.qCFOPID.AsInteger
  end;
end;

procedure TfrmRecebeXML.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not fDMRecebeXML.mItensNota.IsEmpty then
  begin
    if fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger < 1 then
    begin
      Background  := clRed;
      AFont.Color := clWhite;
    end
    else
    if (fDMRecebeXML.mItensNotaCFOPInterno.AsString = '0') or (fDMRecebeXML.mItensNotaCFOPInterno.AsString = '') then
      Background := clGray
    else
    if (fDMRecebeXML.mItensNotaUnidade.AsString <> fDMRecebeXML.mItensNotaUnidadeInterno.AsString)
       //and (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) <= 0)
       and (fDMRecebeXML.qParametrosUSA_QTDPACOTE_NTE.AsString = 'S') then
       //and (fDMRecebeXML.mItensNotaItem_Unidade.AsInteger <> -1) then
      Background := clAqua
    else
    if fDMRecebeXML.mItensNotaInativo_Produto.AsString = 'S' then
    begin
      Background  := clMaroon;
      AFont.Color := clWhite;
    end
    else
    //05/12/2017  Alterado (vai usar a OC que vem do XML)
    //if (Trim(fDMRecebeXML.mItensNotaNumPedido.AsString) = '') or (Trim(fDMRecebeXML.mItensNotaNumPedido.AsString) = '0')
      // or (fDMRecebeXML.mItensNotaItemPedido.AsInteger <= 0)  then
    if fDMRecebeXML.mItensNotaID_Pedido.AsInteger <= 0 then
    begin
      Background  := clYellow;
      AFont.Color := clBlack;
    end;
  end;
end;

procedure TfrmRecebeXML.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ffrmSel_Produto_Cor: TfrmSel_Produto_Cor;
begin
  if Key = Vk_F3 then
  begin
    vCodProduto_Pos    := 0;
    vCodCombinacao_Pos := 0;
    vPreco_Venda_Rec_XML_Pos := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaVlr_Venda.AsFloat));
    vPreco_Custo_Rec_XML_Pos := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaVlr_Custo_Prod.AsFloat));

    if (fDMRecebeXML.qParametrosINFORMAR_COR_MATERIAL.AsString = 'S') or (fDMRecebeXML.qParametrosINFORMAR_COR_PROD.AsString = 'C')
      or (fDMRecebeXML.qParametrosINFORMAR_COR_PROD.AsString = 'B') then
    begin
      ffrmSel_Produto_Cor := TfrmSel_Produto_Cor.Create(Self);
      ffrmSel_Produto_Cor.vTipo_Prod := '';
      case ComboBox1.ItemIndex of
        0: ffrmSel_Produto_Cor.vTipo_Prod := 'P';
        1: ffrmSel_Produto_Cor.vTipo_Prod := 'M';
      end;
      ffrmSel_Produto_Cor.ShowModal;
      FreeAndNil(ffrmSel_Produto_Cor);
    end
    else
    begin
      ffrmSel_Produto := TfrmSel_Produto.Create(Self);
      ffrmSel_Produto.vTipo_Prod := '';
      case ComboBox1.ItemIndex of
        0: ffrmSel_Produto.vTipo_Prod := 'P';
        1: ffrmSel_Produto.vTipo_Prod := 'M';
      end;
      ffrmSel_Produto.ShowModal;
      FreeAndNil(ffrmSel_Produto);
    end;

    if vCodProduto_Pos > 0 then
    begin
      fDMRecebeXML.mItensNota.Edit;
      fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger := vCodProduto_Pos;
      fDMRecebeXML.mItensNotaID_Cor.AsInteger            := vCodCombinacao_Pos;
      if fDMRecebeXML.mItensNotaID_Cor.AsInteger > 0 then
      begin
        fDMRecebeXML.qCor.Close;
        fDMRecebeXML.qCor.ParamByName('ID').AsInteger := fDMRecebeXML.mItensNotaID_Cor.AsInteger;
        fDMRecebeXML.qCor.Open;
        fDMRecebeXML.mItensNotaNome_Cor.AsString := fDMRecebeXML.qCorNOME.AsString;
      end;
      fDMRecebeXML.mItensNotaReferencia_Int.AsString := vReferencia_Pos;
      fDMRecebeXML.mItensNotaUnidadeInterno.AsString := vUnidade_Pos;
      fDMRecebeXML.mItensNotaUsa_Cor.AsString        := vUsa_Cor_Pos;
      fDMRecebeXML.mItensNotaUsa_Preco_Cor.AsString  := vUsa_Preco_Cor_Pos;
      fDMRecebeXML.mItensNotaVlr_Venda.AsFloat       := StrToFloat(FormatFloat('0.0000',vPreco_Venda_Rec_XML_Pos));
      fDMRecebeXML.mItensNotaVlr_Custo_Prod.AsFloat  := StrToFloat(FormatFloat('0.0000',vPreco_Custo_Rec_XML_Pos));

      fDMRecebeXML.qProdutoInativo.Close;
      fDMRecebeXML.qProdutoInativo.ParamByName('ID').AsInteger := vCodProduto_Pos;
      fDMRecebeXML.qProdutoInativo.Open;
      if fDMRecebeXML.qProdutoInativoINATIVO.AsString <> 'S' then
        fDMRecebeXML.mItensNotaInativo_Produto.AsString := 'N'
      else
        fDMRecebeXML.mItensNotaInativo_Produto.AsString := 'S';
      if not(fDMRecebeXML.cdsProduto.Active) or (fDMRecebeXML.cdsProduto.RecordCount <= 1) then
        fDMRecebeXML.prc_Abrir_Produto(fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger)
      else
        fDMRecebeXML.cdsProduto.Locate('ID',fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger,([LocaseInsensitive]));
      if fDMRecebeXML.cdsProdutoID.AsInteger = fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger then
      begin
        fDMRecebeXML.mItensNotaPerc_Margem.AsFloat := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsProdutoPERC_MARGEMLUCRO.AsFloat));
        fDMRecebeXML.mItensNotaID_Grupo.AsInteger  := fDMRecebeXML.cdsProdutoID_GRUPO.AsInteger;
        fDMRecebeXML.mItensNotaGerar_Estoque.AsString := fDMRecebeXML.cdsProdutoESTOQUE.AsString;
        prc_Monta_Grupo('N');
      end;
      fDMRecebeXML.mItensNota.Post;
      prc_Mostrar_Cor;
    end;
  end
  else
  if (Key = Vk_F4) and not(fDMRecebeXML.mItensNota.IsEmpty) then
  begin
    fDMRecebeXML.vNum_Pedido  := '';
    fDMRecebeXML.vID_Pedido   := 0;
    fDMRecebeXML.vItem_Pedido := 0;
    ffrmRecebeXML_ConsOC := TfrmRecebeXML_ConsOC.Create(Self);
    ffrmRecebeXML_ConsOC.fDMRecebeXML := fDMRecebeXML;
    ffrmRecebeXML_ConsOC.vCodCliente  := vCodFornecedor;
    ffrmRecebeXML_ConsOC.ShowModal;
    FreeAndNil(ffrmRecebeXML_ConsOC);
    if trim(fDMRecebeXML.vNum_Pedido) <> '' then
    begin
      prc_Ajuste_Prod_Pela_OC(False);
    end;
  end;
end;

procedure TfrmRecebeXML.BitBtn1Click(Sender: TObject);
begin
  ffrmRecebeXML_ConsItens := TfrmRecebeXML_ConsItens.Create(self);
  ffrmRecebeXML_ConsItens.fDMRecebeXML := fDMRecebeXML;
  ffrmRecebeXML_ConsItens.ShowModal;
  FreeAndNil(ffrmRecebeXML_ConsItens);
end;

procedure TfrmRecebeXML.BitBtn2Click(Sender: TObject);
begin
  if vCodFornecedor > 0 then
    exit;
  if MessageDlg('Deseja gravar o fornecedor no sistema?', mtConfirmation,[mbOk,mbNo],0)=mrNo then
    exit;

  Gravar_Fornecedor;

  ShowMessage('Fornecedor gerado com o código ' + fDMRecebeXML.cdsFornecedorCODIGO.AsString);
end;

procedure TfrmRecebeXML.Gravar_Cidade;
var
  vAux: Integer;
begin
  vAux := dmDatabase.ProximaSequencia('CIDADE',0);

  fDMRecebeXML.cdsCidade.Insert;
  fDMRecebeXML.cdsCidadeID.AsInteger          := vAux;
  fDMRecebeXML.cdsCidadeNOME.AsString         := UpperCase(fDMRecebeXML.cdsCabecalhoenderEmit_xMun.AsString);
  fDMRecebeXML.cdsCidadeUF.AsString           := UpperCase(fDMRecebeXML.cdsCabecalhoenderEmit_UF.AsString);
  fDMRecebeXML.cdsCidadeCODMUNICIPIO.AsString := fDMRecebeXML.cdsCabecalhoenderEmit_cMun.AsString;
  fDMRecebeXML.cdsCidade.Post;
  fDMRecebeXML.cdsCidade.ApplyUpdates(0);

  vCodCidade := vAux;

  lbStatusCidade.Color := clMoneyGreen;
  lbStatusCidade.Caption := 'Encontrada - Código Interno: ' + fDMRecebeXML.cdsCabecalhoenderEmit_xMun.AsString;
end;

procedure TfrmRecebeXML.Gravar_Pais;
var
  vAux: Integer;
begin
  vAux := dmDatabase.ProximaSequencia('PAIS',0);

  fDMRecebeXML.cdsPais.Insert;

  fDMRecebeXML.cdsPaisID.AsInteger     := vAux;
  fDMRecebeXML.cdsPaisNOME.AsString    := UpperCase(fDMRecebeXML.cdsCabecalhoenderEmit_xPais.AsString);
  fDMRecebeXML.cdsPaisCODPAIS.AsString := fDMRecebeXML.cdsCabecalhoenderEmit_cPais.AsString;
  fDMRecebeXML.cdsPais.Post;
  fDMRecebeXML.cdsPais.ApplyUpdates(0);

  vIDPais := vAux;

  lbStatusPais.Color   := clMoneyGreen;
  lbStatusPais.Caption := 'Encontrado - Código Interno: ' + IntToStr(vIDPais);
end;

procedure TfrmRecebeXML.Gravar_Fornecedor;
var
  vAux: Integer;
begin
  vAux := dmDatabase.ProximaSequencia('PESSOA',0);
  vAux := vAux;

  try
    fDMRecebeXML.cdsFornecedor.Insert;
    fDMRecebeXML.cdsFornecedorCODIGO.AsInteger      := vAux;
    if fDMRecebeXML.qParametros_GeralUSAR_PESSOA_FILIAL.AsString = 'S' then
      fDMRecebeXML.cdsFornecedorFILIAL.AsInteger := vFilial_Local;
    fDMRecebeXML.cdsFornecedorNOME.AsString         := UpperCase(fDMRecebeXML.cdsCabecalhoemit_xNome.AsString);
    fDMRecebeXML.cdsFornecedorENDERECO.AsString     := UpperCase(fDMRecebeXML.cdsCabecalhoenderEmit_xLgr.AsString);
    fDMRecebeXML.cdsFornecedorBAIRRO.AsString       := UpperCase(fDMRecebeXML.cdsCabecalhoenderEmit_xBairro.AsString);
    fDMRecebeXML.cdsFornecedorCIDADE.AsString       := UpperCase(fDMRecebeXML.cdsCabecalhoenderEmit_xMun.AsString);
    fDMRecebeXML.cdsFornecedorCEP.AsString          := fDMRecebeXML.cdsCabecalhoenderEmit_CEP.AsString;
    fDMRecebeXML.cdsFornecedorUF.AsString           := UpperCase(fDMRecebeXML.cdsCabecalhoenderEmit_UF.AsString);
    fDMRecebeXML.cdsFornecedorTELEFONE1.AsString    := fDMRecebeXML.cdsCabecalhoenderEmit_fone.AsString;
    fDMRecebeXML.cdsFornecedorCNPJ_CPF.AsString     := edCNPJEmitente2.Text;
    fDMRecebeXML.cdsFornecedorINSCR_EST.AsString    := edInscEmitente2.Text;
    if fDMRecebeXML.cdsFornecedorINSCR_EST.AsString = EmptyStr then
      fDMRecebeXML.cdsFornecedorTIPO_CONTRIBUINTE.AsInteger := 9
    else
    if fDMRecebeXML.cdsFornecedorINSCR_EST.AsString = 'ISENTO' then
      fDMRecebeXML.cdsFornecedorTIPO_CONTRIBUINTE.AsInteger := 2
    else
      fDMRecebeXML.cdsFornecedorTIPO_CONTRIBUINTE.AsInteger := 1;
    fDMRecebeXML.cdsFornecedorDTCADASTRO.AsDateTime := Date;
    fDMRecebeXML.cdsFornecedorFANTASIA.AsString     := UpperCase(fDMRecebeXML.cdsCabecalhoxFant.AsString);
    if ComboBox3.ItemIndex = 0 then
      fDMRecebeXML.cdsFornecedorTP_FORNECEDOR.AsString := 'S'
    else
      fDMRecebeXML.cdsFornecedorTP_CLIENTE.AsString := 'S';
    if vImportar_NotaSaida then
      fDMRecebeXML.cdsFornecedorTP_CLIENTE.AsString := 'S';
    if vCodCidade < 1 then
      Gravar_Cidade;
    if vIDPais < 1 then
      Gravar_Pais;
    fDMRecebeXML.cdsFornecedorID_CIDADE.AsInteger   := vCodCidade;
    fDMRecebeXML.cdsFornecedorUSUARIO.AsString      := 'NFeXML';
    fDMRecebeXML.cdsFornecedorHRCADASTRO.AsDateTime := Now;
    fDMRecebeXML.cdsFornecedorCOMPLEMENTO_END.AsString := UpperCase(fDMRecebeXML.cdsCabecalhoenderEmit_xCpl.AsString);
    fDMRecebeXML.cdsFornecedorNUM_END.AsString      := fDMRecebeXML.cdsCabecalhoenderEmit_nro.AsString;
    fDMRecebeXML.cdsFornecedorID_PAIS.AsInteger     := vIDPais;
    if Length(edCNPJEmitente2.Text) = 18 then
      fDMRecebeXML.cdsFornecedorPESSOA.AsString := 'J'
    else
      fDMRecebeXML.cdsFornecedorPESSOA.AsString := 'F';
    if (fDMRecebeXML.qParametros_RecXMLCONTROLAR_GRAVA_PROD.AsString = 'S') and not(ckAssociar.Checked) then
      fDMRecebeXML.cdsFornecedorASSOCIAR_PROD.AsString := 'N'
    else
      fDMRecebeXML.cdsFornecedorASSOCIAR_PROD.AsString := 'S';
    fDMRecebeXML.cdsFornecedor.Post;
    fDMRecebeXML.cdsFornecedor.ApplyUpdates(0);

    vCodFornecedor  := vAux;
    BitBtn2.Visible := False;
    Label61.Visible := False;

    lbStatusForn.Color   := clMoneyGreen;
    lbStatusForn.Caption := 'Encontrado - Código Interno: ' + IntToStr(vAux);
  except
    on e: Exception do
    begin
      vCodFornecedor :=  0;
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar o fornecedor: ' + #13 + e.Message);
    end
  end;
end;

procedure TfrmRecebeXML.Gravar_ClasFiscal;
var
  vAux: Integer;
begin
  if fDMRecebeXML.mItensNotaID_NCM.AsInteger > 0 then
    exit;

  vAux := fDMRecebeXML.fnc_Abrir_NCM(fDMRecebeXML.mItensNotaNCM.AsString);
  if vAux > 0 then
  begin
    fDMRecebeXML.mItensNota.Edit;
    fDMRecebeXML.mItensNotaID_NCM.AsInteger := vAux;
    fDMRecebeXML.mItensNotaCEST_Interno.AsString := fDMRecebeXML.cdsNCMCOD_CEST.AsString;
    fDMRecebeXML.mItensNota.Post;
    exit;
  end;

  vAux := dmDatabase.ProximaSequencia('TAB_NCM',0);

  try
    fDMRecebeXML.cdsNCM.Insert;
    fDMRecebeXML.cdsNCMID.AsInteger      := vAux;
    fDMRecebeXML.cdsNCMNCM.AsString      := fDMRecebeXML.mItensNotaNCM.AsString;
    fDMRecebeXML.cdsNCMCOD_CEST.AsString := fDMRecebeXML.mItensNotaCEST.AsString;
    fDMRecebeXML.cdsNCMNOME.AsString     := '';
    fDMRecebeXML.cdsNCM.Post;
    fDMRecebeXML.cdsNCM.ApplyUpdates(0);

    fDMRecebeXML.mItensNota.Edit;
    fDMRecebeXML.mItensNotaID_NCM.AsInteger      := vAux;
    fDMRecebeXML.mItensNotaCEST_Interno.AsString := fDMRecebeXML.mItensNotaCEST.AsString;
    fDMRecebeXML.mItensNota.Post;
  except
    on e: Exception do
    begin
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar a NCM: ' + #13 + e.Message);
    end
  end;
end;

procedure TfrmRecebeXML.Gravar_Unidade_Conv;
var
  vItemAux: Integer;
begin
  if trim(fDMRecebeXML.mItensNotaUnidade.AsString) = '' then
    exit;

  try
    fDMRecebeXML.cdsUnidade_Conv.Close;
    fDMRecebeXML.sdsUnidade_Conv.ParamByName('UNIDADE').AsString := fDMRecebeXML.mItensNotaUnidadeInterno.AsString;
    fDMRecebeXML.cdsUnidade_Conv.Open;
    fDMRecebeXML.cdsUnidade_Conv.Last;
    vItemAux := fDMRecebeXML.cdsUnidade_ConvITEM.AsInteger + 1;

    fDMRecebeXML.cdsUnidade_Conv.Insert;
    fDMRecebeXML.cdsUnidade_ConvUNIDADE.AsString      := fDMRecebeXML.mItensNotaUnidadeInterno.AsString;
    fDMRecebeXML.cdsUnidade_ConvITEM.AsInteger        := vItemAux;
    fDMRecebeXML.cdsUnidade_ConvQTD.AsFloat           := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
    fDMRecebeXML.cdsUnidade_ConvUNIDADE_CONV.AsString := fDMRecebeXML.mItensNotaUnidade.AsString;
    fDMRecebeXML.cdsUnidade_ConvNOME.AsString         := fDMRecebeXML.cdsUnidade_ConvUNIDADE_CONV.AsString + ' ' + FormatFloat('0.####',fDMRecebeXML.cdsUnidade_ConvQTD.AsFloat);
    fDMRecebeXML.cdsUnidade_Conv.Post;
    fDMRecebeXML.cdsUnidade_Conv.ApplyUpdates(0);

    fDMRecebeXML.mItensNota.Edit;
    fDMRecebeXML.mItensNotaItem_Unidade.AsInteger := fDMRecebeXML.cdsUnidade_ConvITEM.AsInteger;
    fDMRecebeXML.mItensNota.Post;
  except
    on e: Exception do
    begin
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar a unidade de conversão: ' + #13 + e.Message);
    end
  end;
end;

procedure TfrmRecebeXML.Gravar_Unidade;
begin
  if trim(fDMRecebeXML.mItensNotaUnidade.AsString) = '' then
    exit;

  try
    fDMRecebeXML.cdsUnidade.Close;
    fDMRecebeXML.sdsUnidade.ParamByName('UNIDADE').AsString := fDMRecebeXML.mItensNotaUnidade.AsString;
    fDMRecebeXML.cdsUnidade.Open;
    if trim(fDMRecebeXML.mItensNotaUnidadeInterno.AsString) = '' then
    begin
      fDMRecebeXML.mItensNota.Edit;
      fDMRecebeXML.mItensNotaUnidadeInterno.AsString := fDMRecebeXML.mItensNotaUnidade.AsString;
      fDMRecebeXML.mItensNota.Post;
    end;
    if (fDMRecebeXML.cdsUnidade.IsEmpty) or (fDMRecebeXML.cdsUnidadeUNIDADE.AsString = '') then
    begin
      fDMRecebeXML.cdsUnidade.Insert;
      fDMRecebeXML.cdsUnidadeUNIDADE.AsString  := fDMRecebeXML.mItensNotaUnidade.AsString;
      fDMRecebeXML.cdsUnidadeNOME.AsString     := fDMRecebeXML.mItensNotaUnidade.AsString;
      fDMRecebeXML.cdsUnidadeCONVERSOR.AsFloat := 0;
      fDMRecebeXML.cdsUnidade.Post;
      fDMRecebeXML.cdsUnidade.ApplyUpdates(0);
      if (trim(fDMRecebeXML.mItensNotaUnidadeInterno.AsString) <> '') and
         (fDMRecebeXML.mItensNotaUnidade.AsString <> fDMRecebeXML.mItensNotaUnidadeInterno.AsString) and
         (fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean) and
         (StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) <> StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacoteInterno.AsFloat))) then
         Gravar_Unidade_Conv;
    end
    else
    begin
      if (trim(fDMRecebeXML.mItensNotaUnidadeInterno.AsString) <> '') and
         (fDMRecebeXML.mItensNotaUnidade.AsString <> fDMRecebeXML.mItensNotaUnidadeInterno.AsString) and
         (fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean) and
         (StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) <> StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacoteInterno.AsFloat))) then
      begin
        fDMRecebeXML.qUnidade_Conv.Close;
        fDMRecebeXML.qUnidade_Conv.ParamByName('UNIDADE').AsString      := fDMRecebeXML.mItensNotaUnidadeInterno.AsString;
        fDMRecebeXML.qUnidade_Conv.ParamByName('UNIDADE_CONV').AsString := fDMRecebeXML.mItensNotaUnidade.AsString;
        fDMRecebeXML.qUnidade_Conv.ParamByName('QTD').AsFloat           := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
        fDMRecebeXML.qUnidade_Conv.Open;
        if fDMRecebeXML.qUnidade_Conv.IsEmpty then
          Gravar_Unidade_Conv
        else
        begin
          fDMRecebeXML.mItensNota.Edit;
          fDMRecebeXML.mItensNotaItem_Unidade.AsInteger := fDMRecebeXML.qUnidade_ConvITEM.AsInteger;
          fDMRecebeXML.mItensNota.Post;
        end
      end;
    end;
  except
    on e: Exception do
    begin
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar a unidade: ' + #13 + e.Message);
    end
  end;
end;

procedure TfrmRecebeXML.Verificar_Produto;
var
  vExiste: Boolean;
  vVlrAux: Real;
begin
  vExiste := False;
  lbStatusMaterial.Color := clMoneyGreen;
  if (fDMRecebeXML.qParametros_RecXMLCONTROLAR_GRAVA_PROD.AsString = 'S') and not(ckAssociar.Checked) then
    fDMRecebeXML.prc_Abrir_Produto(-1);
  //  exit;

  if fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger > 0 then
    fDMRecebeXML.prc_Abrir_Produto(fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger)
  else
  begin
    //17/01/2019 só o if do controalr_grava_prod foi incluido
    if (trim(fDMRecebeXML.qParametros_RecXMLCONTROLAR_GRAVA_PROD.AsString) <> 'S') or
       ((fDMRecebeXML.qParametros_RecXMLCONTROLAR_GRAVA_PROD.AsString = 'S') and (ckAssociar.Checked)) then
    begin
      if not fDMRecebeXML.fnc_Abrir_Produto_Forn(vCodFornecedor,fDMRecebeXML.mItensNotaCodProduto.AsString,fDMRecebeXML.mItensNotaCodBarra.AsString) then
      begin
        if fDMRecebeXML.qParametrosPROCURAR_POR_REF_XML.AsString <> 'S' then
          fDMRecebeXML.prc_Abrir_Produto(-1);
      end
      else
      begin
        vExiste := True;
        fDMRecebeXML.mItensNota.Edit;
        if fDMRecebeXML.qParametrosPROCURAR_POR_REF_XML.AsString = 'S' then
          fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger := fDMRecebeXML.cdsProdutoID.AsInteger
        else
        begin
          fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger := fDMRecebeXML.cdsProduto_FornID.AsInteger;
          if fDMRecebeXML.cdsProdutoID.AsInteger <> fDMRecebeXML.cdsProduto_FornID.AsInteger then
            fDMRecebeXML.prc_Abrir_Produto(fDMRecebeXML.cdsProduto_FornID.AsInteger);
        end;
        fDMRecebeXML.mItensNotaReferencia_Int.AsString := fDMRecebeXML.cdsProdutoREFERENCIA.AsString;
        fDMRecebeXML.mItensNotaPerc_Margem.AsFloat     := fDMRecebeXML.cdsProdutoPERC_MARGEMLUCRO.AsFloat;
        fDMRecebeXML.mItensNotaID_Grupo.AsInteger      := fDMRecebeXML.cdsProdutoID_GRUPO.AsInteger;
        fDMRecebeXML.mItensNotaGerar_Estoque.AsString  := fDMRecebeXML.cdsProdutoESTOQUE.AsString;
        prc_Monta_Grupo('N');
        fDMRecebeXML.mItensNota.Post;
      end;
    end;
  end;
  if fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger <= 0 then
    Gravar_Produto
  else
  begin
    if fDMRecebeXML.cdsProduto.Locate('ID',fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger,([LocaseInsensitive])) then
    begin
      if (fDMRecebeXML.mItensNotaID_NCM.AsInteger > 0) and (fDMRecebeXML.cdsProdutoID_NCM.AsInteger <> fDMRecebeXML.mItensNotaID_NCM.AsInteger) then
      begin
        //13/11/2017
        //if fDMRecebeXML.qParametros_RecXMLATUALIZAR_NCM.AsString = 'S' then
        if fDMRecebeXML.mItensNotaAtualizarNCM.AsBoolean then
        begin
          fDMRecebeXML.cdsProduto.Edit;
          fDMRecebeXML.cdsProdutoID_NCM.AsInteger := fDMRecebeXML.mItensNotaID_NCM.AsInteger;
        end;
      end;
      if (fDMRecebeXML.mItensNotaID_Grupo.AsInteger > 0) and (fDMRecebeXML.cdsProdutoID_GRUPO.AsInteger <> fDMRecebeXML.mItensNotaID_Grupo.AsInteger) then
      begin
        if not(fDMRecebeXML.cdsProduto.State in [dsEdit]) then
          fDMRecebeXML.cdsProduto.Edit;
        if fDMRecebeXML.mItensNotaID_Grupo.AsInteger > 0 then
          fDMRecebeXML.cdsProdutoID_GRUPO.AsInteger := fDMRecebeXML.mItensNotaID_Grupo.AsInteger
        else
          fDMRecebeXML.cdsProdutoID_GRUPO.Clear;
      end;
      if not(fDMRecebeXML.cdsProduto.State in [dsEdit]) then
        fDMRecebeXML.cdsProduto.Edit;
      if fDMRecebeXML.mItensNotaGerar_CLiquido.AsBoolean then
        fDMRecebeXML.cdsProdutoUSA_CLIQ.AsString := 'S'
      else
        fDMRecebeXML.cdsProdutoUSA_CLIQ.AsString := 'N';
      if trim(fDMRecebeXML.cdsProdutoTIPO_VENDA.AsString) = '' then
        fDMRecebeXML.cdsProdutoTIPO_VENDA.AsString := fDMRecebeXML.mItensNotaTipoVenda.AsString;
      if fDMRecebeXML.cdsProduto.State in [dsEdit] then
        fDMRecebeXML.cdsProduto.Post;
      if (fDMRecebeXML.qParametros_RecXMLATUALIZAR_CEST.AsString = 'S') and (trim(fDMRecebeXML.mItensNotaCEST.AsString) <> '') and
         (fDMRecebeXML.mItensNotaCEST.AsString <> fDMRecebeXML.mItensNotaCEST_Interno.AsString) then
      begin
        if fDMRecebeXML.fnc_Abrir_NCM(fDMRecebeXML.mItensNotaNCM.AsString) > 0 then
        begin
          fDMRecebeXML.cdsNCM.Edit;
          fDMRecebeXML.cdsNCMCOD_CEST.AsString := fDMRecebeXML.mItensNotaCEST.AsString;
          fDMRecebeXML.cdsNCM.Post;
          fDMRecebeXML.cdsNCM.ApplyUpdates(0);
        end;
      end;
    end;
    //14/11/2016
    //if (ckAtualizaPreco.Checked) or (ckAtualizaCusto.Checked) then
    if (fDMRecebeXML.mItensNotaAtualizarPreco.AsBoolean) or (fDMRecebeXML.mItensNotaAtualizarCustoTotal.AsBoolean) then
      Atualiza_Preco;
    if ckAtualizaRef.Checked then
      prc_Atualiza_Ref;
    lbStatusMaterial.Caption := 'Produto encontrado, código ' + fDMRecebeXML.mItensNotaCodProdutoInterno.AsString;
  end;

  if (fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean) and (StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) > 0) and
    (fDMRecebeXML.mItensNotaItem_Unidade.AsInteger > 0) then
    prc_Gravar_Produto_Uni;

  if fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger > 0 then
  begin
    if not fDMRecebeXML.fnc_Verifica_Produto_Forn(fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger,fDMRecebeXML.mItensNotaCodFornecedor.AsInteger,fDMRecebeXML.mItensNotaCodProduto.AsString) then
    begin
      //fDMRecebeXML.prc_Abrir_Produto_Forn2(fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger);
      Gravar_MaterialFornecedor;
    end;
  end
  else
  if not fDMRecebeXML.fnc_Abrir_Produto_Forn(vCodFornecedor,fDMRecebeXML.mItensNotaCodProduto.AsString,fDMRecebeXML.mItensNotaCodBarra.AsString,True) then
    Gravar_MaterialFornecedor
  else
  //14/11/2016
  //if (ckAtualizaPreco.Checked) or (ckAtualizaCusto.Checked) then
  if (fDMRecebeXML.mItensNotaAtualizarPreco.AsBoolean) or (fDMRecebeXML.mItensNotaAtualizarCustoTotal.AsBoolean) then
  begin
    fDMRecebeXML.cdsProduto_Forn.Edit;
    if (fDMRecebeXML.mItensNotaAtualizarPreco.AsBoolean) and (DateEdit1.Date >= fDMRecebeXML.cdsProdutoDT_ALTPRECO.AsDateTime) then
    begin
      vVlrAux := fnc_Montar_PrecoCompra(fDMRecebeXML.cdsProdutoUNIDADE.AsString);
      fDMRecebeXML.cdsProduto_FornPRECO_CUSTO.AsFloat := StrToFloat(FormatFloat('0.00000',vVlrAux));
    end;
    vVlrAux := fnc_Montar_PrecoCustoTotal(fDMRecebeXML.cdsProdutoUNIDADE.AsString);
    if (fDMRecebeXML.mItensNotaAtualizarCustoTotal.AsBoolean) and (DateEdit1.Date >= fDMRecebeXML.cdsProdutoDT_ALT_PRECOCUSTO.AsDateTime) then
      fDMRecebeXML.cdsProduto_FornPRECO_CUSTO_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00000',vVlrAux));
    fDMRecebeXML.cdsProduto_FornITEM_UNIDADE.AsInteger := fDMRecebeXML.mItensNotaItem_Unidade.AsInteger;
    if not fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean then
      fDMRecebeXML.cdsProduto_FornITEM_UNIDADE.AsInteger := -1;
    fDMRecebeXML.cdsProduto_FornID_COR.AsInteger := fDMRecebeXML.mItensNotaID_Cor.AsInteger;
    fDMRecebeXML.cdsProduto_Forn.Post;
    fDMRecebeXML.cdsProduto_Forn.ApplyUpdates(0);
  end;
end;

procedure TfrmRecebeXML.Gravar_Produto;
var
  vAux: Integer;
  vVlrAux: Real;
  //vUnidadeAux: String;
begin
  //if (fDMRecebeXML.qParametros_RecXMLCONTROLAR_GRAVA_PROD.AsString = 'S') and not(ckAssociar.Checked) then
  //  exit;

  vAux := dmDatabase.ProximaSequencia('PRODUTO',0);
  vAux := vAux;

  fDMRecebeXML.cdsProduto.Insert;
  fDMRecebeXML.cdsProdutoID.AsInteger       := vAux;
  if fDMRecebeXML.qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S' then
    //fDMRecebeXML.cdsProdutoFILIAL.AsInteger := vFilial;
    fDMRecebeXML.cdsProdutoFILIAL.AsInteger := vFilial_Local;
  fDMRecebeXML.cdsProdutoNOME.AsString      := UpperCase(fDMRecebeXML.mItensNotaNomeProduto.AsString);
  //15/01/2018 para concatenar os dados adicionais no nome do produto  (Beira Rio)
  if (fDMRecebeXML.mItensNotaGravar_Adic_Prod.AsString = 'S') and (trim(fDMRecebeXML.mItensNotaInfAdicionais.AsString) <> '') then
    fDMRecebeXML.cdsProdutoNOME.AsString := fDMRecebeXML.cdsProdutoNOME.AsString + ' ' + fDMRecebeXML.mItensNotaInfAdicionais.AsString;
  //*******************

  if trim(fDMRecebeXML.mItensNotaUnidadeInterno.AsString) <> '' then
    fDMRecebeXML.cdsProdutoUNIDADE.AsString := UpperCase(fDMRecebeXML.mItensNotaUnidadeInterno.AsString)
  else
    fDMRecebeXML.cdsProdutoUNIDADE.AsString := UpperCase(fDMRecebeXML.mItensNotaUnidade.AsString);
  fDMRecebeXML.cdsProdutoID_NCM.AsInteger   := fDMRecebeXML.mItensNotaID_NCM.AsInteger;
  fDMRecebeXML.cdsProdutoINATIVO.AsString   := 'N';
  fDMRecebeXML.cdsProdutoPERC_IPI.AsFloat   := fDMRecebeXML.mItensNotaAliqIPI.AsFloat;
  case ComboBox1.ItemIndex of
    0: fDMRecebeXML.cdsProdutoTIPO_REG.AsString := 'P';
    1: fDMRecebeXML.cdsProdutoTIPO_REG.AsString := 'M';
    2: fDMRecebeXML.cdsProdutoTIPO_REG.AsString := 'C';
  end;
  if (fDMRecebeXML.qParametros_RecXMLUSA_REF_SEQUENCIAL.AsString = 'S') and (trim(fDMRecebeXML.mItensNotaReferencia_Int.AsString) <> '') then
  begin
    fDMRecebeXML.cdsProdutoREFERENCIA.AsString      := fDMRecebeXML.mItensNotaReferencia_Int.AsString;
    fDMRecebeXML.cdsProdutoREFERENCIA_SEQ.AsInteger := StrToInt(fDMRecebeXML.mItensNotaReferencia_Int.AsString);
  end
  else
  if fDMRecebeXML.qParametrosGRAVAR_NA_REF_CODPRODFORN.AsString = 'S' then
    fDMRecebeXML.cdsProdutoREFERENCIA.AsString := fDMRecebeXML.mItensNotaCodProduto.AsString
  else
  begin
    fDMRecebeXML.cdsProdutoREFERENCIA.AsString := fDMRecebeXML.cdsProdutoTIPO_REG.AsString + '.' + FormatFloat('000000',vAux);
    fDMRecebeXML.cdsProdutoREFERENCIA_SEQ.AsInteger := vAux;
  end;
  fDMRecebeXML.cdsProdutoPRECO_CUSTO.AsFloat      := fDMRecebeXML.mItensNotaVlrUnitario.AsFloat;
  fDMRecebeXML.cdsProdutoPOSSE_MATERIAL.AsString  := 'E';
  fDMRecebeXML.cdsProdutoESTOQUE.AsString         := 'S';
  fDMRecebeXML.cdsProdutoMATERIAL_OUTROS.AsString := 'M';
  fDMRecebeXML.cdsProdutoUSUARIO.AsString         := 'NFeXML';
  fDMRecebeXML.cdsProdutoDTCAD.AsDateTime         := Date;
  fDMRecebeXML.cdsProdutoHRCAD.AsDateTime         := Now;
  fDMRecebeXML.cdsProdutoORIGEM_PROD.AsString     := fDMRecebeXML.mItensNotaOrigem.AsString;

  //16/02/2017
  if (fDMRecebeXML.cdsProdutoORIGEM_PROD.AsString = '1') or (fDMRecebeXML.cdsProdutoORIGEM_PROD.AsString = '2') or
     (fDMRecebeXML.cdsProdutoORIGEM_PROD.AsString = '3') or (fDMRecebeXML.cdsProdutoORIGEM_PROD.AsString = '8') then
    fDMRecebeXML.cdsProdutoUSA_PERC_IMP_INTERESTADUAL.AsString := 'S'
  else
    fDMRecebeXML.cdsProdutoUSA_PERC_IMP_INTERESTADUAL.AsString := 'N';
  //***********

  //if (fDMRecebeXML.qParametros_RecXMLCONTROLAR_GRAVA_PROD.AsString = 'S') and not(ckAssociar.Checked) then
  //  exit;

  //if (trim(fDMRecebeXML.qParametros_RecXMLCONTROLAR_GRAVA_PROD.AsString) <> 'S') or
  //   ((fDMRecebeXML.qParametros_RecXMLCONTROLAR_GRAVA_PROD.AsString = 'S') and (ckAssociar.Checked)) then
  fDMRecebeXML.cdsProdutoID_FORNECEDOR.AsInteger  := vCodFornecedor;
  //12/07/2018
  if (fDMRecebeXML.mItensNotaCodBarra2.AsString <> '') and (fDMRecebeXML.mItensNotaCodBarra.AsString <> fDMRecebeXML.mItensNotaCodBarra2.AsString) then
    fDMRecebeXML.cdsProdutoCOD_BARRA.AsString := fDMRecebeXML.mItensNotaCodBarra2.AsString
  else
    fDMRecebeXML.cdsProdutoCOD_BARRA.AsString := fDMRecebeXML.mItensNotaCodBarra.AsString;
  if fDMRecebeXML.mItensNotaID_SitTrib_CF.AsInteger > 0 then
    fDMRecebeXML.cdsProdutoID_SITTRIB_CF.AsInteger := fDMRecebeXML.mItensNotaID_SitTrib_CF.AsInteger
  else
    fDMRecebeXML.cdsProdutoID_SITTRIB_CF.Clear;
  fDMRecebeXML.cdsProdutoPERC_MARGEMLUCRO.AsFloat := StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaPerc_Margem.AsFloat));

  //incluido 13/08/2014
  //vUnidadeAux := fDMRecebeXML.cdsProdutoUNIDADE.AsString;
  //11/11/2016
  vVlrAux := fnc_Montar_PrecoCompra(fDMRecebeXML.cdsProdutoUNIDADE.AsString);
  if StrToFloat(FormatFloat('0.00000000',vVlrAux)) > 0 then
    fDMRecebeXML.cdsProdutoPRECO_CUSTO.AsFloat := vVlrAux;
  fDMRecebeXML.cdsProdutoDT_ALTPRECO.AsDateTime := DateEdit1.Date;
  //13/11/2016
  vVlrAux := fnc_Montar_PrecoCustoTotal(fDMRecebeXML.cdsProdutoUNIDADE.AsString);
  if StrToFloat(FormatFloat('0.00000',vVlrAux)) > 0 then
    fDMRecebeXML.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00000',vVlrAux));
  prc_Aplicar_Margem;
  //*****************

  if (fDMRecebeXML.mItensNotaTipoVenda.AsString = 'C') or (fDMRecebeXML.mItensNotaTipoVenda.AsString = 'R') or (fDMRecebeXML.mItensNotaTipoVenda.AsString = 'I') then
    fDMRecebeXML.cdsProdutoTIPO_VENDA.AsString := fDMRecebeXML.mItensNotaTipoVenda.AsString
  else
  begin
    if fDMRecebeXML.cdsCFOPCODCFOP.AsString <> fDMRecebeXML.mItensNotaCFOPInterno.AsString then
      fDMRecebeXML.cdsCFOP.Locate('CODCFOP',fDMRecebeXML.mItensNotaCFOPInterno.AsString, ([LocaseInsensitive]));
    if fDMRecebeXML.cdsCFOPTIPO_IND_VEN.AsString = 'I' then
      fDMRecebeXML.cdsProdutoTIPO_VENDA.AsString := 'V'
    else
    if fDMRecebeXML.cdsCFOPTIPO_IND_VEN.AsString = 'V' then
      fDMRecebeXML.cdsProdutoTIPO_VENDA.AsString := 'R';
  end;

  fDMRecebeXML.cdsProdutoID_CFOP_NFCE.AsInteger := fDMRecebeXML.mItensNotaID_CFOP_NFCe.AsInteger;
  if fDMRecebeXML.mItensNotaID_Grupo.AsInteger > 0 then
    fDMRecebeXML.cdsProdutoID_GRUPO.AsInteger := fDMRecebeXML.mItensNotaID_Grupo.AsInteger;

  //26/01/2017
  if fDMRecebeXML.qParametros_RecXMLMOSTRAR_VLR_VENDA.AsString = 'S' then
  begin
    fDMRecebeXML.cdsProdutoPRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaVlr_Venda.AsFloat));
  end;

  //10/10/2017
  if fDMRecebeXML.mItensNotaGerar_CLiquido.AsBoolean then
    fDMRecebeXML.cdsProdutoUSA_CLIQ.AsString := 'S'
  else
    fDMRecebeXML.cdsProdutoUSA_CLIQ.AsString := 'N';
  //***************
  fDMRecebeXML.cdsProdutoESTOQUE.AsString := 'S';
  if fDMRecebeXML.mItensNotaGerar_Estoque.AsString <> 'S' then
    fDMRecebeXML.cdsProdutoESTOQUE.AsString := 'N';
    
  fDMRecebeXML.cdsProduto.Post;
  fDMRecebeXML.cdsProduto.ApplyUpdates(0);

  fDMRecebeXML.mItensNota.Edit;
  fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger := vAux;
  fDMRecebeXML.mItensNotaUnidadeInterno.AsString     := fDMRecebeXML.cdsProdutoUNIDADE.AsString;
  fDMRecebeXML.mItensNotaReferencia_Int.AsString     := fDMRecebeXML.cdsProdutoREFERENCIA.AsString;
  fDMRecebeXML.mItensNotaPerc_Margem.AsFloat         := fDMRecebeXML.cdsProdutoPERC_MARGEMLUCRO.AsFloat;
  fDMRecebeXML.mItensNotaID_Grupo.AsInteger          := fDMRecebeXML.cdsProdutoID_GRUPO.AsInteger;
  prc_Monta_Grupo('N');

  //*************

  fDMRecebeXML.mItensNota.Post;

  lbStatusMaterial.Caption := 'Gravou novo produto, código ' + IntToStr(vAux);
end;

procedure TfrmRecebeXML.Gravar_MaterialFornecedor;
var
  vItemAux: Integer;
  vVlrAux: Real;
begin
  if not fDMRecebeXML.cdsProduto_Forn.Active then
    fDMRecebeXML.cdsProduto_Forn.Open;

  if (fDMRecebeXML.qParametros_RecXMLCONTROLAR_GRAVA_PROD.AsString = 'S') and not(ckAssociar.Checked) then
    exit;

  vItemAux := fDMRecebeXML.fnc_Proximo_Item_Forn(fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger);
  vItemAux := vItemAux + 1;

  //fDMRecebeXML.cdsProduto_Forn.Last;
  //vItemAux := fDMRecebeXML.cdsProduto_FornITEM.AsInteger;
  //vItemAux := vItemAux + 1;

  fDMRecebeXML.cdsProduto_Forn.Insert;
  fDMRecebeXML.cdsProduto_FornID.AsInteger                := fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger;
  fDMRecebeXML.cdsProduto_FornID_FORNECEDOR.AsInteger     := vCodFornecedor;
  fDMRecebeXML.cdsProduto_FornITEM.AsInteger              := vItemAux;
  fDMRecebeXML.cdsProduto_FornNOME_MATERIAL_FORN.AsString := fDMRecebeXML.mItensNotaNomeProduto.AsString;
  //15/01/2018
  if (fDMRecebeXML.mItensNotaGravar_Adic_Prod.AsString = 'S') and (trim(fDMRecebeXML.mItensNotaInfAdicionais.AsString) <> '') then
    fDMRecebeXML.cdsProduto_FornNOME_MATERIAL_FORN.AsString := fDMRecebeXML.cdsProduto_FornNOME_MATERIAL_FORN.AsString + ' ' + fDMRecebeXML.mItensNotaInfAdicionais.AsString;
  //******************
  fDMRecebeXML.cdsProduto_FornCOD_MATERIAL_FORN.AsString  := fDMRecebeXML.mItensNotaCodProduto.AsString;
  fDMRecebeXML.cdsProduto_FornCOD_BARRA.AsString          := fDMRecebeXML.mItensNotaCodBarra.AsString;
  fDMRecebeXML.cdsProduto_FornPRECO_CUSTO.AsFloat         := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat));
  fDMRecebeXML.cdsProduto_FornUNIDADE_FORN.AsString       := fDMRecebeXML.mItensNotaUnidade.AsString;
  fDMRecebeXML.cdsProduto_FornITEM_UNIDADE.AsInteger      := fDMRecebeXML.mItensNotaItem_Unidade.AsInteger;
  fDMRecebeXML.cdsProduto_FornID_COR.AsInteger            := fDMRecebeXML.mItensNotaID_Cor.AsInteger;
  if not fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean then
    fDMRecebeXML.cdsProduto_FornITEM_UNIDADE.AsInteger := -1;
  //13/11/2016
  if fDMRecebeXML.cdsProdutoID.AsInteger <> fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger then
    fDMRecebeXML.cdsProduto.Locate('ID',fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger,([LocaseInsensitive]));
  vVlrAux := fnc_Montar_PrecoCompra(fDMRecebeXML.cdsProdutoUNIDADE.AsString);
  fDMRecebeXML.cdsProduto_FornPRECO_CUSTO.AsFloat := StrToFloat(FormatFloat('0.00000',vVlrAux));
  vVlrAux := fnc_Montar_PrecoCustoTotal(fDMRecebeXML.cdsProdutoUNIDADE.AsString);
  fDMRecebeXML.cdsProduto_FornPRECO_CUSTO_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00000',vVlrAux));
  //************
  fDMRecebeXML.cdsProduto_Forn.Post;
  fDMRecebeXML.cdsProduto_Forn.ApplyUpdates(0);
end;

procedure TfrmRecebeXML.Gravar_NotaEntrada;
var
  vNumSeq: Integer;
  vExisteAux: Boolean;
begin
  vID_Nota := 0;
  vGravar := False;

  //vExisteAux := fDMRecebeXML.fnc_Abrir_Nota(vFilial,fDMRecebeXML.cdsCabecalhonNF.AsInteger,vCodFornecedor,fDMRecebeXML.cdsCabecalhoserie.AsString);
  vExisteAux := fDMRecebeXML.fnc_Abrir_Nota(vFilial_Local,fDMRecebeXML.cdsCabecalhonNF.AsInteger,vCodFornecedor,fDMRecebeXML.cdsCabecalhoserie.AsString);
  if vExisteAux then
    exit;

  vGravar := True;

  vNumSeq := dmDatabase.ProximaSequencia('NOTAFISCAL',0);

  try
    fDMRecebeXML.cdsNotaFiscal.Insert;
    fDMRecebeXML.cdsNotaFiscalID.AsInteger     := vNumSeq;
    fDMRecebeXML.cdsNotaFiscalFILIAL.AsInteger := vFilial_Local;
    if trim(RxDBLookupCombo9.Text) <> '' then
      fDMRecebeXML.cdsNotaFiscalID_OPERACAO_NOTA.AsInteger := RxDBLookupCombo9.KeyValue
    else
      fDMRecebeXML.cdsNotaFiscalID_OPERACAO_NOTA.Clear;
    if not(vImportar_NotaSaida) then
    begin
      fDMRecebeXML.cdsNotaFiscalNUMNOTA.AsInteger := fDMRecebeXML.cdsCabecalhonNF.AsInteger;
      fDMRecebeXML.cdsNotaFiscalSERIE.AsString    := fDMRecebeXML.cdsCabecalhoserie.AsString;
      fDMRecebeXML.cdsNotaFiscalTIPO_REG.AsString := 'NTE';
    end
    else
    begin
      fDMRecebeXML.cdsNotaFiscalNUMNOTA.AsInteger := 0;
      fDMRecebeXML.cdsNotaFiscalSERIE.AsString    := '';
      fDMRecebeXML.cdsNotaFiscalTIPO_REG.AsString := 'NTS';
    end;
    fDMRecebeXML.cdsNotaFiscalID_CLIENTE.AsInteger := vCodFornecedor;
    if (fDMRecebeXML.cdsParcelas.IsEmpty) or (vImportar_NotaSaida) then
      fDMRecebeXML.cdsNotaFiscalTIPO_PRAZO.AsString := 'N'
    else
      fDMRecebeXML.cdsNotaFiscalTIPO_PRAZO.AsString := 'P';
    if vImportar_NotaSaida then
      fDMRecebeXML.cdsNotaFiscalDTEMISSAO.AsDateTime := DateEdit1.Date
    else
    begin
      fDMRecebeXML.cdsNotaFiscalDTEMISSAO.AsDateTime      := vDtEmissao;
      fDMRecebeXML.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime := DateEdit1.Date;
    end;
    fDMRecebeXML.cdsNotaFiscalVLR_FRETE.AsFloat       := fDMRecebeXML.cdsCabecalhovFrete.AsFloat;
    fDMRecebeXML.cdsNotaFiscalVLR_NOTA.AsFloat        := fDMRecebeXML.cdsCabecalhovNF.AsFloat;
    fDMRecebeXML.cdsNotaFiscalBASE_ICMS.AsFloat       := 0;
    fDMRecebeXML.cdsNotaFiscalVLR_ICMS.AsFloat        := 0;
    fDMRecebeXML.cdsNotaFiscalVLR_IPI.AsFloat         := 0;
    fDMRecebeXML.cdsNotaFiscalID_CFOP.AsInteger       := fDMRecebeXML.mItensNotaCFOPInterno.AsInteger;
    fDMRecebeXML.cdsNotaFiscalVLR_OUTRASDESP.AsFloat  := fDMRecebeXML.cdsCabecalhovOutro.AsFloat;
    fDMRecebeXML.cdsNotaFiscalVLR_ITENS.AsFloat       := fDMRecebeXML.cdsCabecalhovNF.AsFloat;
    fDMRecebeXML.cdsNotaFiscalVLR_DESCONTO.AsFloat    := fDMRecebeXML.cdsCabecalhoICMSTot_vDesc.AsFloat;
    if vImportar_NotaSaida then
    begin
      fDMRecebeXML.cdsNotaFiscalNFECHAVEACESSO.AsString := '';
      fDMRecebeXML.cdsNotaFiscalNFEPROTOCOLO.AsString   := '';
      fDMRecebeXML.cdsNotaFiscalID_REGIMETRIB.AsInteger := fDMRecebeXML.qFilialID_REGIME_TRIB.AsInteger;
      fDMRecebeXML.cdsNotaFiscalSIMPLES_FILIAL.AsString := fDMRecebeXML.qFilialSIMPLES.AsString;
      fDMRecebeXML.cdsNotaFiscalESPECIE.AsString        := fDMRecebeXML.qParametrosESPECIE_NOTA.AsString;
      fDMRecebeXML.cdsNotaFiscalMARCA.AsString          := fDMRecebeXML.qParametrosMARCA_NOTA.AsString;
    end
    else
    begin
      fDMRecebeXML.cdsNotaFiscalNFECHAVEACESSO.AsString := fDMRecebeXML.cdsNFeProtocolochNFe.AsString;
      fDMRecebeXML.cdsNotaFiscalNFEPROTOCOLO.AsString   := fDMRecebeXML.cdsNFeProtocolonProt.AsString;
    end;
    fDMRecebeXML.cdsNotaFiscalVLR_SEGURO.AsFloat := fDMRecebeXML.cdsCabecalhovSeg.AsFloat;
    if RxDBLookupCombo1.Text <> '' then
      fDMRecebeXML.cdsNotaFiscalID_CLIENTETRIANG.AsInteger := RxDBLookupCombo1.KeyValue;
    if not vImportar_NotaSaida then
      fDMRecebeXML.cdsNotaFiscalTIPO_NOTA.AsString := 'E'
    else
    begin
      case ComboBox2.ItemIndex of
        0: fDMRecebeXML.cdsNotaFiscalTIPO_NOTA.AsString := 'S';
        1: fDMRecebeXML.cdsNotaFiscalTIPO_NOTA.AsString := 'E';
      end;
    end;

    fDMRecebeXML.cdsNotaFiscalVLR_DUPLICATA.AsFloat := 0;
    //fDMRecebeXML.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger := rxdbLocalEstoque.KeyValue;
    fDMRecebeXML.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger := vID_Local_Estoque;

    fDMRecebeXML.cdsNotaFiscal.Post;

    vID_Nota := fDMRecebeXML.cdsNotaFiscalID.AsInteger;

    lbStatusNotaEntrada.Color   := clMoneyGreen;
    lbStatusNotaEntrada.Caption := 'Nota Gerada!';
  except
    on e: Exception do
    begin
      vID_Nota := 0;
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar a nota: ' + #13 + e.Message);
    end
  end;
end;

procedure TfrmRecebeXML.Gravar_NotaEntradaItens;
begin
  vItem := vItem + 1;

  try
    fDMRecebeXML.cdsNotaFiscal_Itens.Insert;
    fDMRecebeXML.cdsNotaFiscal_ItensID.AsInteger          := fDMRecebeXML.cdsNotaFiscalID.AsInteger;
    fDMRecebeXML.cdsNotaFiscal_ItensITEM.AsInteger        := vItem;
    fDMRecebeXML.cdsNotaFiscal_ItensID_PRODUTO.AsInteger  := fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger;
    //14/01/2019
    if fDMRecebeXML.cdsNotaFiscalID_OPERACAO_NOTA.AsInteger > 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensID_OPERACAO_NOTA.AsInteger := fDMRecebeXML.cdsNotaFiscalID_OPERACAO_NOTA.AsInteger
    else
      fDMRecebeXML.cdsNotaFiscal_ItensID_OPERACAO_NOTA.Clear;
    //******************

    fDMRecebeXML.cdsNotaFiscal_ItensID_NCM.AsInteger      := fDMRecebeXML.mItensNotaID_NCM.AsInteger;
    fDMRecebeXML.cdsNotaFiscal_ItensQTD.AsFloat           := fDMRecebeXML.mItensNotaQtd.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat   := fDMRecebeXML.mItensNotaQtd.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat  := fDMRecebeXML.mItensNotaVlrUnitario.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat     := fDMRecebeXML.mItensNotaVlrTotal.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_ICMS.AsFloat     := fDMRecebeXML.mItensNotaAliqIcms.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_IPI.AsFloat      := fDMRecebeXML.mItensNotaAliqIPI.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_DESCONTO.AsFloat := 0;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat  := fDMRecebeXML.mItensNotaVlrDesconto.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_IPI.AsFloat       := fDMRecebeXML.mItensNotaVlrIPI.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMS.AsFloat      := fDMRecebeXML.mItensNotaVlrIcms.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensBASE_ICMS.AsFloat     := fDMRecebeXML.mItensNotaBaseIcms.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensID_CSTICMS.AsInteger  := fDMRecebeXML.mItensNotaCodSitTribInterno.AsInteger;
    if trim(fDMRecebeXML.mItensNotaTipoVenda.AsString) <> '' then
      fDMRecebeXML.cdsNotaFiscal_ItensFINALIDADE.AsString := fDMRecebeXML.mItensNotaTipoVenda.AsString;
    if fDMRecebeXML.mItensNotaCodSitTribInterno.AsInteger <= 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensID_CSTICMS.Clear;
    fDMRecebeXML.cdsNotaFiscal_ItensCALCULARICMSSOBREIPI.AsString := 'N';
    //fDMRecebeXML.cdsNotaFiscal_ItensID_COR.AsInteger      := fDMRecebeXML.mItensNotaCodCor.AsInteger;
    //if fDMRecebeXML.mItensNotaCodCor.AsInteger <= 0 then
    //  fDMRecebeXML.cdsNotaFiscal_ItensID_COR.Clear;
    fDMRecebeXML.cdsNotaFiscal_ItensID_COR.AsInteger      := fDMRecebeXML.mItensNotaID_Cor.AsInteger;
    if fDMRecebeXML.mItensNotaID_Cor.AsInteger <= 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensID_COR.Clear;
    fDMRecebeXML.cdsNotaFiscal_ItensUNIDADE.AsString        := fDMRecebeXML.mItensNotaUnidade.AsString;
    fDMRecebeXML.cdsNotaFiscal_ItensNUMERO_OC.AsString      := Trim(fDMRecebeXML.mItensNotaNumPedido.AsString);
    fDMRecebeXML.cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger   := fnc_NumValido(Trim(fDMRecebeXML.mItensNotaItemPedido.AsString));
    fDMRecebeXML.cdsNotaFiscal_ItensID_PEDIDO.AsInteger     := fDMRecebeXML.mItensNotaID_Pedido.AsInteger;
    fDMRecebeXML.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger := 0;
    fDMRecebeXML.cdsNotaFiscal_ItensREFERENCIA.AsString     := fDMRecebeXML.cdsProdutoREFERENCIA.AsString;
    fDMRecebeXML.cdsNotaFiscal_ItensNOME_PRODUTO.AsString   := fDMRecebeXML.mItensNotaNomeProduto.AsString;
    //15/01/2018 para concatenar os dados adicionais no nome do produto  (Beira Rio)
    if (fDMRecebeXML.mItensNotaGravar_Adic_Prod.AsString = 'S') and (trim(fDMRecebeXML.mItensNotaInfAdicionais.AsString) <> '') then
      fDMRecebeXML.cdsNotaFiscal_ItensNOME_PRODUTO.AsString := fDMRecebeXML.cdsNotaFiscal_ItensNOME_PRODUTO.AsString + fDMRecebeXML.mItensNotaInfAdicionais.AsString;
    //*******************

    fDMRecebeXML.cdsNotaFiscal_ItensID_CFOP.AsInteger       := fDMRecebeXML.mItensNotaCFOPInterno.AsInteger;
    if fDMRecebeXML.cdsNotaFiscalTIPO_PRAZO.AsString <> 'N' then
      fDMRecebeXML.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString := 'S'
    else
      fDMRecebeXML.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString := 'N';
    if fDMRecebeXML.cdsCFOPCODCFOP.AsString <> fDMRecebeXML.mItensNotaCFOP.AsString then
      fDMRecebeXML.cdsCFOP.Locate('CODCFOP',fDMRecebeXML.mItensNotaCFOP.AsString, ([LocaseInsensitive]));
    if fDMRecebeXML.cdsCFOPGERAR_DUPLICATA.AsString = 'S' then
      fDMRecebeXML.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString := 'S'
    else
      fDMRecebeXML.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString := 'N';
    if vImportar_NotaSaida then
      fDMRecebeXML.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString := 'N'
    else
      fDMRecebeXML.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString := fDMRecebeXML.cdsCFOPGERAR_ESTOQUE.AsString;
    if fDMRecebeXML.mItensNotaGerar_Estoque.AsString <> 'S' then
      fDMRecebeXML.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString := 'N';
    fDMRecebeXML.cdsNotaFiscal_ItensTAMANHO.AsString      := fDMRecebeXML.mItensNotaTamanho.AsString;
    fDMRecebeXML.cdsNotaFiscal_ItensQTDDEVOLVIDA.AsFloat  := 0;
    fDMRecebeXML.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat   := fDMRecebeXML.mItensNotaQtd.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_FRETE.AsFloat     := fDMRecebeXML.mItensNotaVlrFrete.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensORIGEM_PROD.AsString  := fDMRecebeXML.mItensNotaOrigem.AsString;
    fDMRecebeXML.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat    := fDMRecebeXML.mItensNotaQtdPacote.AsFloat;
    if fDMRecebeXML.mItensNotaID_CSTICMS.AsInteger > 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensID_CSTICMS.AsInteger := fDMRecebeXML.mItensNotaID_CSTICMS.AsInteger;
    if fDMRecebeXML.mItensNotaID_CSTIPI.AsInteger > 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensID_CSTIPI.AsInteger := fDMRecebeXML.mItensNotaID_CSTIPI.AsInteger;
    if fDMRecebeXML.mItensNotaID_Cofins.AsInteger > 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensID_COFINS.AsInteger := fDMRecebeXML.mItensNotaID_Cofins.AsInteger;
    if fDMRecebeXML.mItensNotaID_Pis.AsInteger > 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensID_PIS.AsInteger := fDMRecebeXML.mItensNotaID_Pis.AsInteger;
    fDMRecebeXML.cdsNotaFiscal_ItensTipo_Nota.AsString := 'E';
    if fDMRecebeXML.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString = 'S' then
      fDMRecebeXML.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat));

    //03/08/2016 Foi alterado
    if trim(fDMRecebeXML.mItensNotaObs_Complementar.AsString) <> '' then
      fDMRecebeXML.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := fDMRecebeXML.mItensNotaObs_Complementar.AsString;
    //if (fDMRecebeXML.qParametrosGRAVAR_INF_ADICIONAIS_NTE.AsString = 'S') or (fDMRecebeXML.mItensNotaGRAVAR_INF_ADICIONAIS_NTE.AsString = 'S') then
    if (fDMRecebeXML.qParametrosGRAVAR_INF_ADICIONAIS_NTE.AsString = 'S') then
    begin
      if (trim(fDMRecebeXML.mItensNotaInfAdicionais.AsString) <> '') and not(fDMRecebeXML.mItensNotaInfAdicionais.IsNull) then
      begin
        if (fDMRecebeXML.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.IsNull) or (trim(fDMRecebeXML.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString) = '') then
          fDMRecebeXML.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := fDMRecebeXML.mItensNotaInfAdicionais.AsString
        else
          fDMRecebeXML.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := fDMRecebeXML.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString + ', ' + fDMRecebeXML.mItensNotaInfAdicionais.AsString;
      end;
    end;
    //**************************
    if fDMRecebeXML.cdsProdutoID_CONTA_ORCAMENTO.AsInteger > 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensCONTA_ORCAMENTO_ID.AsInteger := fDMRecebeXML.cdsProdutoID_CONTA_ORCAMENTO.AsInteger;

    if trim(fDMRecebeXML.mItensNotaNum_Lote_Controle.AsString) <> '' then
      fDMRecebeXML.cdsNotaFiscal_ItensNUM_LOTE_CONTROLE.AsString := UpperCase(fDMRecebeXML.mItensNotaNum_Lote_Controle.AsString);

    fDMRecebeXML.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat := fDMRecebeXML.mItensNotaPercRedIcms.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_ISSQN.AsFloat     := StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlr_ISSQN.AsFloat));
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_ISSQN.AsFloat    := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaPerc_ISSQN.AsFloat));

    //23/01/2018
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_COFINS.AsFloat := StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaAliqCofins.AsFloat));
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_PIS.AsFloat    := StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaAliqPIS.AsFloat));
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_COFINS.AsFloat  := StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrCofins.AsFloat));
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_PIS.AsFloat     := StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrPis.AsFloat));
    fDMRecebeXML.cdsNotaFiscal_ItensPRECO_CUSTO_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaPreco_Custo_Total.AsFloat));
    //****************

    fDMRecebeXML.cdsNotaFiscal_ItensCOD_BARRA2.AsString := fDMRecebeXML.mItensNotaCodBarra2.AsString; 

    fDMRecebeXML.cdsNotaFiscal_Itens.Post;
    Atualiza_Preco;

    if fDMRecebeXML.cdsNotaFiscal_ItensID_PEDIDO.AsInteger > 0 then
    begin
      if not(fDMRecebeXML.mPedidoAux.FindKey([fDMRecebeXML.cdsNotaFiscal_ItensID_PEDIDO.AsInteger])) then
      begin
        fDMRecebeXML.mPedidoAux.Insert;
        fDMRecebeXML.mPedidoAuxID_Pedido.AsInteger := fDMRecebeXML.cdsNotaFiscal_ItensID_PEDIDO.AsInteger;
        fDMRecebeXML.mPedidoAux.Post;
      end;
    end;

    fDMRecebeXML.cdsNotaFiscal.Edit;
    fDMRecebeXML.cdsNotaFiscalBASE_ICMS.AsFloat := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsNotaFiscalBASE_ICMS.AsFloat +
                                                              fDMRecebeXML.cdsNotaFiscal_ItensBASE_ICMS.AsFloat));
    fDMRecebeXML.cdsNotaFiscalVLR_ICMS.AsFloat  := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsNotaFiscalVLR_ICMS.AsFloat +
                                                              fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMS.AsFloat));
    fDMRecebeXML.cdsNotaFiscalVLR_IPI.AsFloat   := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsNotaFiscalVLR_IPI.AsFloat +
                                                              fDMRecebeXML.cdsNotaFiscal_ItensVLR_IPI.AsFloat));
    fDMRecebeXML.cdsNotaFiscal.Post;
    fDMRecebeXML.cdsNotaFiscal_Itens.Last;

    //aqui
    //fDMRecebeXML.cdsNotaFiscal.ApplyUpdates(0);
    //Atualiza_Preco;
  except
    on e: Exception do
    begin
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar o item da nota: ' + #13 + e.Message);
    end
  end;
end;

procedure TfrmRecebeXML.Gravar_Estoque;
var
  vDescAux: Real;
  vTipo_MovAux: String;
begin
  if vImportar_NotaSaida then
    vTipo_MovAux := 'NTS'
  else
    vTipo_MovAux := 'NTE';

  vDescAux    := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat +
                                                 fDMRecebeXML.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat));
  vID_Estoque := fDMEstoque.fnc_Gravar_Estoque(0,
                                               fDMRecebeXML.cdsNotaFiscalFILIAL.AsInteger,
                                               fDMRecebeXML.cdsNotaFiscalID_LOCAL_ESTOQUE.AsInteger, //aqui verificar o local do estoque
                                               fDMRecebeXML.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,
                                               fDMRecebeXML.cdsNotaFiscalNUMNOTA.AsInteger,
                                               fDMRecebeXML.cdsNotaFiscalID_CLIENTE.AsInteger,
                                               fDMRecebeXML.cdsNotaFiscal_ItensID_CFOP.AsInteger,
                                               fDMRecebeXML.cdsNotaFiscalID.AsInteger,0,'E',vTipo_MovAux,
                                               fDMRecebeXML.cdsNotaFiscal_ItensUNIDADE.AsString,
                                               fDMRecebeXML.cdsNotaFiscal_ItensUNIDADE.AsString,
                                               fDMRecebeXML.cdsNotaFiscalSERIE.AsString,
                                               fDMRecebeXML.cdsNotaFiscal_ItensTAMANHO.AsString,
                                               fDMRecebeXML.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime,
                                               fDMRecebeXML.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensQTD.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensPERC_ICMS.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensPERC_IPI.AsFloat,
                                               vDescAux,
                                               fDMRecebeXML.cdsNotaFiscal_ItensPERC_TRIBICMS.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensVLR_FRETE.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensQTD.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat,
                                               vDescAux,fDMRecebeXML.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat,
                                               fDMRecebeXML.mItensNotaUnidadeInterno.AsString,
                                               fDMRecebeXML.cdsNotaFiscal_ItensID_COR.AsInteger,
                                               fDMRecebeXML.cdsNotaFiscal_ItensNUM_LOTE_CONTROLE.AsString,'S',
                                               fDMRecebeXML.cdsNotaFiscal_ItensPRECO_CUSTO_TOTAL.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensID_OPERACAO_NOTA.AsInteger);

  lbStatusEstoque.Color   := clMoneyGreen;
  lbStatusEstoque.Caption := 'Gerou o estoque dos itens';
end;

procedure TfrmRecebeXML.Gravar_NotaEntradaParc;
var
  vItemAux: Integer;
  vVlrParc: Real;
begin
  fDMRecebeXML.cdsNotaFiscal_Parc.Last;
  vItemAux := fDMRecebeXML.cdsNotaFiscal_ParcITEM.AsInteger;
  vItemAux := vItemAux;
  vVlrParc := 0;
  if fDMRecebeXML.cdsNotaFiscal.State in [dsEdit,dsInsert] then
    fDMRecebeXML.cdsNotaFiscal.Post;

  try
    //22/01/2019  Foi alterado para buscar da tabela temporária
    {fDMRecebeXML.cdsParcelas.First;
    while not fDMRecebeXML.cdsParcelas.Eof do
    begin
      vItemAux := vItemAux + 1;

      fDMRecebeXML.cdsNotaFiscal_Parc.Insert;
      fDMRecebeXML.cdsNotaFiscal_ParcID.AsInteger              := fDMRecebeXML.cdsNotaFiscalID.AsInteger;
      fDMRecebeXML.cdsNotaFiscal_ParcITEM.AsInteger            := vItemAux;
      fDMRecebeXML.cdsNotaFiscal_ParcDTVENCIMENTO.AsDateTime   := fDMRecebeXML.cdsParcelasdVenc.AsDateTime;
      fDMRecebeXML.cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat    := StrtoFloat(FormatFloat('0.00',fDMRecebeXML.cdsParcelasvDup.AsFloat));
      fDMRecebeXML.cdsNotaFiscal_ParcID_CONTA.AsInteger        := 0;
      fDMRecebeXML.cdsNotaFiscal_ParcID_TIPOCOBRANCA.AsInteger := 0;
      fDMRecebeXML.cdsNotaFiscal_Parc.Post;
      //fDMRecebeXML.cdsNotaFiscal_Parc.ApplyUpdates(0);

      vVlrParc := StrtoFloat(FormatFloat('0.00',vVlrParc + fDMRecebeXML.cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat));

      fDMRecebeXML.cdsParcelas.Next;
    end;}

    fDMRecebeXML.mParc.First;
    while not fDMRecebeXML.mParc.Eof do
    begin
      vItemAux := vItemAux + 1;

      fDMRecebeXML.cdsNotaFiscal_Parc.Insert;
      fDMRecebeXML.cdsNotaFiscal_ParcID.AsInteger              := fDMRecebeXML.cdsNotaFiscalID.AsInteger;
      fDMRecebeXML.cdsNotaFiscal_ParcITEM.AsInteger            := vItemAux;
      fDMRecebeXML.cdsNotaFiscal_ParcDTVENCIMENTO.AsDateTime   := fDMRecebeXML.mParcDtVencimento.AsDateTime;
      fDMRecebeXML.cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat    := StrtoFloat(FormatFloat('0.00',fDMRecebeXML.mParcVlrVencimento.AsFloat));
      if fDMRecebeXML.mParcID_Conta.AsInteger > 0 then
        fDMRecebeXML.cdsNotaFiscal_ParcID_CONTA.AsInteger := fDMRecebeXML.mParcID_Conta.AsInteger;
      if fDMRecebeXML.mParcID_TipoCobranca.AsInteger > 0 then
        fDMRecebeXML.cdsNotaFiscal_ParcID_TIPOCOBRANCA.AsInteger := fDMRecebeXML.mParcID_TipoCobranca.AsInteger;
      fDMRecebeXML.cdsNotaFiscal_Parc.Post;
      vVlrParc := StrtoFloat(FormatFloat('0.00',vVlrParc + fDMRecebeXML.cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat));
      fDMRecebeXML.mParc.Next;
    end;

    if fDMRecebeXML.cdsNotaFiscal.State in [dsBrowse] then
      fDMRecebeXML.cdsNotaFiscal.Edit;
    fDMRecebeXML.cdsNotaFiscalVLR_DUPLICATA.AsFloat := StrtoFloat(FormatFloat('0.00',vVlrParc));
    fDMRecebeXML.cdsNotaFiscal.Post;
   // fDMRecebeXML.cdsNotaFiscal.ApplyUpdates(0);

    if not fDMRecebeXML.cdsNotaFiscal_Parc.IsEmpty then
    begin
      lbStatusContasPagar.Color   := clMoneyGreen;
      lbStatusContasPagar.Caption := 'Contas a pagar gerado';

      fDMRecebeXML.cdsNotaFiscal_Parc.First;
      vItemAux := 0;
      while not fDMRecebeXML.cdsNotaFiscal_Parc.Eof do
      begin
        vItemAux := vItemAux + 1;

        fDMRecebeXML.Gravar_Duplicata('P','N',fDMRecebeXML.cdsNotaFiscal_ParcITEM.AsInteger,
                                              fDMRecebeXML.cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat,
                                              fDMRecebeXML.cdsNotaFiscal_ParcDTVENCIMENTO.AsDateTime);
        fDMRecebeXML.cdsNotaFiscal_Parc.Next;
      end;

    end
    else
    begin
      lbStatusContasPagar.Color      := clRed;
      lbStatusContasPagar.Font.Color := clWhite;
      lbStatusContasPagar.Caption := 'Não existem dados de cobrança, não foram geradas contas a pagar';
    end;
  except
    on e: Exception do
    begin
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar a nota: ' + #13 + e.Message);
    end
  end;
end;

function TfrmRecebeXML.fnc_NumValido(Const S: String): Integer;
var
  i: Integer;
  vTexto: String;
begin
  Result := 0;
  vTexto := '';
  for i := 1 to Length(s) do
  begin
    if S[i] in['0','1','2','3','4','5','6','7','8','9'] then
      vTexto := vTexto + s[i]
    else
    begin
      vTexto := '';
      Break;
    end;
  end;
  if vTexto <> '' then
    Result := StrToInt(vTexto);
end;

procedure TfrmRecebeXML.Ajustar_ICMS;
begin
  if fDMRecebeXML.cdsCFOPID_CSTICMS.AsInteger < 1 then
    exit;

  fDMRecebeXML.mItensNotaCodSitTribInterno.AsInteger := fDMRecebeXML.cdsCFOPID_CSTICMS.AsInteger;
  if fDMRecebeXML.cdsTab_CSTICMS.Locate('ID',fDMRecebeXML.cdsCFOPID_CSTICMS.AsInteger, ([LocaseInsensitive])) then
  begin
    fDMRecebeXML.mItensNotaPercRedIcms.AsFloat := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.cdsTab_CSTICMSPERCENTUAL.AsFloat));
    fDMRecebeXML.mItensNotaCodSitTrib.AsString := fDMRecebeXML.cdsTab_CSTICMSCOD_CST.AsString;
  end;

  if fDMRecebeXML.cdsCFOPGERAR_ICMS.AsString = 'N' then
  begin
    fDMRecebeXML.mItensNotaAliqIcms.AsFloat := 0;
    fDMRecebeXML.mItensNotaBaseIcms.AsFloat := 0;
    fDMRecebeXML.mItensNotaVlrIcms.AsFloat  := 0;
  end;
end;

procedure TfrmRecebeXML.BitBtn4Click(Sender: TObject);
begin
  if DateEdit1.Date <= 0 then
  begin
    MessageDlg('*** Data de entrada não foi informada', mtInformation, [mbOk], 0);
    DateEdit1.SetFocus;
    exit;
  end;

  if MessageDlg('Deseja gravar os produtos no programa?', mtConfirmation,[mbOk,mbNo],0)=mrNo then
    Exit;

  if fnc_erro then
    exit;

  if vCodFornecedor < 1 then
    Gravar_Fornecedor;

  fDMRecebeXML.mItensNota.First;
  while not fDMRecebeXML.mItensNota.Eof do
  begin

    Gravar_ClasFiscal;

    Gravar_Unidade;

    Verificar_Produto;

    fDMRecebeXML.mItensNota.Next;
  end;

  ShowMessage('Produtos gravados!');
end;

procedure TfrmRecebeXML.Atualiza_Preco;
var
  vVlrAux: Real;
  //vUnidadeAux: String;
begin
  //Foi tirado dia 02/11/2017
  //if (fDMRecebeXML.qParametrosATUALIZAR_PRECO.AsString <> 'S') and (fDMRecebeXML.qParametros_NTEATUALIZAR_CUSTO.AsString <> 'S') then
  if (fDMRecebeXML.qParametros_RecXMLCONTROLAR_GRAVA_PROD.AsString = 'S') and not(ckAssociar.Checked) then
    exit;

  if not(fDMRecebeXML.mItensNotaAtualizarPreco.AsBoolean) and not(fDMRecebeXML.mItensNotaAtualizarCustoTotal.AsBoolean) then
    exit;

  if fDMRecebeXML.cdsProdutoID.AsInteger <> fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger then
    if not fDMRecebeXML.cdsProduto.Locate('ID',fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger,([LocaseInsensitive])) then
      exit;
  //vUnidadeAux := fDMRecebeXML.cdsProdutoUNIDADE.AsString;

  vVlrAux := fDMRecebeXML.mItensNotaVlrUnitario.AsFloat;
  //13/11/2016 Foi alterado este processo
  //if ckAtualizaPreco.Checked then
  if fDMRecebeXML.mItensNotaAtualizarPreco.AsBoolean then
  begin
    vVlrAux := fnc_Montar_PrecoCompra(fDMRecebeXML.cdsProdutoUNIDADE.AsString);
    if DateEdit1.Date >= fDMRecebeXML.cdsProdutoDT_ALTPRECO.AsDateTime then
    begin
      fDMRecebeXML.cdsProduto.Edit;
      fDMRecebeXML.cdsProdutoPRECO_CUSTO.AsFloat    := vVlrAux;
      fDMRecebeXML.cdsProdutoDT_ALTPRECO.AsDateTime := DateEdit1.Date;
      vVlrAux := fnc_Montar_PrecoCustoTotal(fDMRecebeXML.cdsProdutoUNIDADE.AsString,False);
    end;
  end;
  //if ckAtualizaCusto.Checked then
  if fDMRecebeXML.mItensNotaAtualizarCustoTotal.AsBoolean then
  begin
    if DateEdit1.Date >= fDMRecebeXML.cdsProdutoDT_ALT_PRECOCUSTO.AsDateTime then
    begin
      if not (fDMRecebeXML.cdsProduto.State in [dsEdit]) then
        fDMRecebeXML.cdsProduto.Edit;
      vVlrAux := fnc_Montar_PrecoCustoTotal(fDMRecebeXML.cdsProdutoUNIDADE.AsString);
      fDMRecebeXML.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat    := StrToFloat(FormatFloat('0.00000',vVlrAux));
      fDMRecebeXML.cdsProdutoDT_ALT_PRECOCUSTO.AsDateTime := DateEdit1.Date;
    end;
  end;
  if fDMRecebeXML.cdsProduto.State in [dsEdit] then
  begin
    if fDMRecebeXML.qParametros_RecXMLMOSTRAR_VLR_VENDA.AsString = 'S' then
      fDMRecebeXML.cdsProdutoPRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaVlr_Venda.AsFloat))
    else
      prc_Aplicar_Margem;
    fDMRecebeXML.cdsProduto.Post;
    fDMRecebeXML.cdsProduto.ApplyUpdates(0);
  end;
  //**************
end;

procedure TfrmRecebeXML.prc_Abrir_qFilial(CNPJ_CPF: String);
begin
  fDMRecebeXML.qFilial.Close;
  fDMRecebeXML.qFilial.ParamByName('CNPJ_CPF').AsString := CNPJ_CPF;
  fDMRecebeXML.qFilial.Open;
  //vFilial     := fDMRecebeXML.qFilialID.AsInteger;
  vFilial_Local := fDMRecebeXML.qFilialID.AsInteger;
  //fDMRecebeXML.qFilial.Close;
end;

procedure TfrmRecebeXML.btnGravarNFeClick(Sender: TObject);
var
  ID: TTransactionDesc;
  vErro: String;
  vVlrAux: Real;
begin
  fDMRecebeXML.mPedidoAux.EmptyDataSet;
  if CheckBox1.Checked then
    vUsaConfigNatOper2 := 'S'
  else
    vUsaConfigNatOper2 := 'N';

  if DateEdit1.Date < 10 then
  begin
    ShowMessage('Data de entrada não informada!');
    DateEdit1.SetFocus;
    exit;
  end;
  //if fDMRecebeXML.cdsCabecalhoide_dEmi.AsDateTime > DateEdit1.Date then
  if vDtEmissao > DateEdit1.Date then
  begin
    ShowMessage('Data de entrada é menor que a data de emissão!');
    DateEdit1.SetFocus;
    exit;
  end;
  if fDMRecebeXML.cdsCabecalhotpAmb.AsString <> '1' then
  begin
    ShowMessage('Nota de homologação não pode ser gravada no sistema!');
    exit;
  end;
  //if (vFilial < 1) and (trim(RxDBLookupCombo1.Text) = '') then
  if (vFilial_Local < 1) and (trim(RxDBLookupCombo1.Text) = '') then
  begin
    ShowMessage('Nota não pertence a empresa. Verifique se o campo <Cliente Triangular> está preenchido!');
    exit;
  end;
  //if (vFilial <= 0) and (trim(RxDBLookupCombo6.Text) = '') then
  if (vFilial_Local <= 0) and (trim(RxDBLookupCombo6.Text) = '') then
  begin
    ShowMessage('Nota não pertence a empresa, Verifique se o campo <Filial> está preenchido!');
    exit;
  end;
  //08/04/2015
  //if vFilial <= 0 then
   // vFilial := RxDBLookupCombo6.KeyValue;
  if (vFilial_Local <= 0) and (RxDBLookupCombo6.Visible) then
  begin
    if not RxDBLookupCombo6.Visible then
    begin
      ShowMessage('Filial não encontrada!');
      exit;
    end;
    vFilial_Local := RxDBLookupCombo6.KeyValue;
  end;
  //*******
  //if fDMRecebeXML.cdsParcelas.IsEmpty then
  if fDMRecebeXML.mParc.IsEmpty then
  begin
    if MessageDlg('Nota sem Financeiro, deseja continuar?',mtConfirmation,[mbNo,mbYes],0)=mrNo then
      Exit;
  end;

  if fnc_erro then
    exit;

  if fDMRecebeXML.qParametros_ProdUSA_LOTE_PROD.AsString = 'S' then
  begin

  end;

  ID.TransactionID  := 2;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    if vCodFornecedor < 1 then
      Gravar_Fornecedor
    else
    if vImportar_NotaSaida then
      Gravar_Cliente;

    vItem := 0;
    Gravar_NotaEntrada;

    //aqui
    if vImportar_NotaSaida then
      Gravar_NotaFiscal_Ref;

    if not vGravar then
    begin
      ShowMessage('Nota já foi gerada!');
      lbStatusNotaEntrada.Color      := clRed;
      lbStatusNotaEntrada.Font.Color := clWhite;
      lbStatusNotaEntrada.Caption    := 'Nota não gerada!';
      dmDatabase.scoDados.Rollback(ID);
      exit;
    end;

    if not(vImportar_NotaSaida) then
      Gravar_NotaEntradaParc;

    if vCodFornecedor <= 0 then
    begin
      MessageDlg('*** Não existe código do fornecedor, excluir a nota e lançar novamente!', mtError, [mbOk], 0);
      exit;
    end
    else
    begin
      fDMRecebeXML.mItensNota.First;
      while not fDMRecebeXML.mItensNota.Eof do
      begin
        Gravar_ClasFiscal;
        Gravar_Unidade;
        Verificar_Produto;
        vID_Estoque := 0;
        vID_Mov     := 0;
        Gravar_NotaEntradaItens;
        if not(vImportar_NotaSaida) then
        begin
          //16/07/2018
          //if fDMRecebeXML.cdsCFOPGERAR_ESTOQUE.AsString = 'S' then
          if fDMRecebeXML.mItensNotaGerar_Estoque.AsString = 'S' then
            Gravar_Estoque;
        end;
        if not(vImportar_NotaSaida) then
          Gravar_Movimento;
        //28/10/2017
        if (fDMRecebeXML.qParametros_ProdUSA_LOTE_PROD.AsString = 'S') and (trim(fDMRecebeXML.mItensNotaNum_Lote_Controle.AsString) <> '') then
        begin
          if fDMRecebeXML.cdsProdutoID.AsInteger <> fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger then
            fDMRecebeXML.cdsProduto.Locate('ID',fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger, ([LocaseInsensitive]));

          vVlrAux := fnc_Montar_PrecoCompra(fDMRecebeXML.mItensNotaUnidadeInterno.AsString);
          if fDMRecebeXML.qParametros_ProdOPCAO_APLICAR_MARGEM.AsString <> 'C' then
            fDMCadProduto_Lote.prc_Gravar(fDMRecebeXML.cdsProdutoID.AsInteger,fDMRecebeXML.mItensNotaNum_Lote_Controle.AsString,
                                           fDMRecebeXML.cdsProdutoPRECO_CUSTO.AsFloat,fDMRecebeXML.cdsProdutoPRECO_VENDA.AsFloat,fDMRecebeXML.cdsProdutoPERC_MARGEMLUCRO.AsFloat)
          else
            fDMCadProduto_Lote.prc_Gravar(fDMRecebeXML.cdsProdutoID.AsInteger,fDMRecebeXML.mItensNotaNum_Lote_Controle.AsString,
                                           fDMRecebeXML.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat,fDMRecebeXML.cdsProdutoPRECO_VENDA.AsFloat,fDMRecebeXML.cdsProdutoPERC_MARGEMLUCRO.AsFloat);
        end;
        //******************

        fDMRecebeXML.cdsNotaFiscal_Itens.Edit;
        fDMRecebeXML.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger := vID_Estoque;
        fDMRecebeXML.cdsNotaFiscal_ItensID_MOVIMENTO.AsInteger  := vID_Mov;
        fDMRecebeXML.cdsNotaFiscal_Itens.Post;
        fDMRecebeXML.mItensNota.Next;
      end;
    end;

    fDMRecebeXML.cdsNotaFiscal.ApplyUpdates(0);

    pcDados.ActivePage := TabSheet5;

    fDMRecebeXML.mPedidoAux.First;
    while not fDMRecebeXML.mPedidoAux.Eof do
    begin
      fDMRecebeXML.sdsPrc_Atualiza_Status_Ped.Close;
      fDMRecebeXML.sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := fDMRecebeXML.mPedidoAuxID_Pedido.AsInteger;
      fDMRecebeXML.sdsPrc_Atualiza_Status_Ped.ExecSQL;
      fDMRecebeXML.mPedidoAux.Next;
    end;

    dmDatabase.scoDados.Commit(ID);

    ShowMessage('Nota gerada!');
    DateEdit1.Clear;

    ceVlrFrete_Nota.Value := 0;

    fDMRecebeXML.cdsCabecalho.Close;

    if vCodFornecedor > 0 then
    begin
      if (not vImportar_NotaSaida) and (fDMRecebeXML.qParametros_RecXMLUSA_DIRETORIO_COPIADO.asString <> 'N') then
        prc_Copiar_Arquivo;
    end;

  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      vErro := e.Message;
      Raise Exception.Create('Ocorreu o seguinte erro ao executar: ' + #13 + vErro);
    end
  end;

  if (trim(vErro) = '') and (vImportar_NotaSaida) then
    Close;
end;

procedure TfrmRecebeXML.btnAbrirXMLClick(Sender: TObject);
var
  vArquivoAux, vPath, vFile: String;
  vFlag: Boolean;
  i: Integer;
  oNFe: TStrings;
  oNFeStream: TMemoryStream;
  dia, mes, ano: Word;
  vAux: String;
  vAux2: String;
  vID_LocalAux: Integer;
begin
  fDMRecebeXML.cdsUnidade2.Close;
  fDMRecebeXML.cdsUnidade2.Open;
  fDMRecebeXML.qParametros.Close;
  fDMRecebeXML.qParametros.Open;
  Label109.Visible         := (fDMRecebeXML.qParametrosUSA_CUPOM_FISCAL.AsString = 'S');
  RxDBLookupCombo5.Visible := (fDMRecebeXML.qParametrosUSA_CUPOM_FISCAL.AsString = 'S');
  Label4.Visible := False;

  vPath := fDMRecebeXML.qParametrosENDXML_NOTAENTRADA.AsString;
  if fDMRecebeXML.qParametrosENDXML_NOTAENTRADA.AsString <> '' then
  begin
    if copy(vPath,Length(vPath),1) <> '\' then
      vFile := vPath + '\*.xml'
    else
      vFile := vPath + '*.xml';
    OpenDialog1.FileName   := vFile;
    OpenDialog1.InitialDir := vPath;
  end;
  if OpenDialog1.Execute then
  begin
    if OpenDialog1.FileName <> vFile then
      vArquivoAux := OpenDialog1.FileName
    else
      vArquivoAux := '';
    pcDados.ActivePage := TabSheet1;
    fDMRecebeXML.mItensNota.EmptyDataSet;
    if fDMRecebeXML.qParametros_RecXMLUSA_REF_SEQUENCIAL.AsString = 'S' then
      CurrencyEdit2.AsInteger := fnc_Proxima_Ref;

    //10/07/2014
    //fDMRecebeXML.AbrirNFe(OpenDialog1.FileName);
    oNFe       := TStringList.Create;
    oNFeStream := TMemoryStream.Create;
//    vArquivoAux := OpenDialog1.FileName;
    oNFe.LoadFromFile(vArquivoAux);
    oNFe.SaveToStream(oNFeStream);

    vFlag := False;
    i := 0;
    while not vFlag do
    begin
      try
        i := i + 1;
        fDMRecebeXML.AbrirNFe(vArquivoAux);
        vFlag := True;
      except
        begin
          if i >= 2 then
            vFlag := True;
          case i of
            1: SalvarUTF8(oNFeStream,vArquivoAux);
            2: SalvarASCII(oNFeStream,vArquivoAux);
          end;
        end;
      end;
    end;

    if fDMRecebeXML.cdsCabecalhonNF.AsInteger <= 0 then
    begin
      ShowMessage('Problema na leitura do XML! (atualize os arquivos XTR)');
      exit;
    end;
    FreeAndNil(oNFe);
    FreeAndNil(oNFeStream);

    if fDMRecebeXML.cdsNFeProtocoloversao.AsString = '2.00' then
      vDtEmissao := fDMRecebeXML.cdsCabecalhoide_dEmi.AsDateTime
    else
    begin
      vAux  := copy(fDMRecebeXML.cdsCabecalhoide_dhemi.AsString,1,10);
      vAux2 := copy(vAux,1,4);
      ano   := StrToInt(vAux2);
      vAux2 := copy(vAux,6,2);
      mes   := StrToInt(vAux2);
      vAux2 := copy(vAux,9,2);
      dia   := StrToInt(vAux2);
      vDtEmissao := EncodeDate(ano,mes,dia);
    end;

    vOpenDialog := OpenDialog1.FileName;
    if fDMRecebeXML.cdsCabecalhotpAmb.AsString <> '1' then
    begin
      Label4.Caption := 'NOTA SEM VALIDADE FISCAL (Homologação)';
      Label4.Visible := True;
    end;

    if CheckBox1.Checked then
      vUsaConfigNatOper2 := 'S'
    else
      vUsaConfigNatOper2 := 'N';

    case fDMRecebeXML.cdsCabecalhoindPag.AsInteger of
      0: edTipoPagamento.Text := '0 - Pagamento à vista';
      1: edTipoPagamento.Text := '1 - Pagamento a prazo';
      2: edTipoPagamento.Text := '2 - Outros';
    end;
    case fDMRecebeXML.cdsCabecalhofinNFe.AsInteger of
      1: edFinalidade.Text := '1 - Normal';
      2: edFinalidade.Text := '2 - Complementar';
      3: edFinalidade.Text := '3 - Ajuste';
    end;
    case fDMRecebeXML.cdsCabecalhotpNF.AsInteger of
      0: edEntradaSaida.Text := '0 - Entrada';
      1: edEntradaSaida.Text := '1 - Saída';
    end;
    case fDMRecebeXML.cdsCabecalhotpEmis.AsInteger of
      1: edFormaEmissao.Text := '1 - Normal';
      2: edFormaEmissao.Text := '2 - Contingência FS';
      3: edFormaEmissao.Text := '3 - Contingência SCAN';
      4: edFormaEmissao.Text := '4 - Contingência DPEC';
      5: edFormaEmissao.Text := '5 - Contingência FS-DA';
    end;
    case fDMRecebeXML.cdsCabecalhoprocEmi.AsInteger of
      0: edProcesso.Text := '0 - Com aplicativo do contribuinte';
      1: edProcesso.Text := '1 - Avulsa pelo Fisco';
      2: edProcesso.Text := '2 - Avulsa pelo contribuinte com seu certificado digital através do site';
      3: edProcesso.Text := '3 - Pelo contribuinte com aplicativo fornecido pelo Fisco';
    end;
    if Trim(fDMRecebeXML.cdsCabecalhoemit_CNPJ.AsString) <> '' then
      edCNPJEmitente.Text := fnc_Monta_CNPJ(fDMRecebeXML.cdsCabecalhoemit_CNPJ.AsString,14)
    else
      edCNPJEmitente.Text := fnc_Monta_CNPJ(fDMRecebeXML.cdsCabecalhoemit_CPF.AsString,11);
    edInscEmitente.Text  := fDMRecebeXML.cdsCabecalhoemit_IE.AsString;
    edInscEmitente2.Text := fDMRecebeXML.cdsCabecalhoemit_IE.AsString;
    edCNPJEmitente2.Text := edCNPJEmitente.Text;
    edUFEmitente.Text    := fDMRecebeXML.cdsCabecalhoenderEmit_UF.AsString;
    if Trim(fDMRecebeXML.cdsCabecalhodest_CNPJ.AsString) <> '' then
      edCNPJDest.Text := fnc_Monta_CNPJ(fDMRecebeXML.cdsCabecalhodest_CNPJ.AsString,14)
    else
      edCNPJDest.Text := fnc_Monta_CNPJ(fDMRecebeXML.cdsCabecalhodest_CPF.AsString,11);
    edInscDest.Text  := fDMRecebeXML.cdsCabecalhodest_IE.AsString;
    edInscDest2.Text := fDMRecebeXML.cdsCabecalhodest_IE.AsString;
    edCNPJDest2.Text := edCNPJDest.Text;
    edUFDest.Text   := fDMRecebeXML.cdsCabecalhoenderDest_UF.AsString;

    if Trim(fDMRecebeXML.cdsCabecalhoCNPJ.AsString) <> '' then
      edCNPJTransportadora.Text := fnc_Monta_CNPJ(fDMRecebeXML.cdsCabecalhoCNPJ.AsString,14)
    else
      edCNPJTransportadora.Text := fnc_Monta_CNPJ(fDMRecebeXML.cdsCabecalhoCPF.AsString,11);

    Procura_DadosCabecalho;

    Le_cdsDetalhe;

    Label61.Visible := (vCodFornecedor < 1);
    BitBtn2.Visible := (vCodFornecedor < 1);

    if fDMRecebeXML.qParametrosID_LOCAL_ESTOQUE_NTE.AsInteger > 0 then
      vID_LocalAux := fDMRecebeXML.qParametrosID_LOCAL_ESTOQUE_NTE.AsInteger
    else
      vID_LocalAux := fnc_Verificar_Local(fDMRecebeXML.qParametrosUSA_LOCAL_ESTOQUE.AsString);
    rxdbLocalEstoque.ClearValue;
    if vID_LocalAux > 0 then
      rxdbLocalEstoque.KeyValue := vID_LocalAux;
    vID_Local_Estoque := vID_LocalAux;

    GroupBox5.Visible := (StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsCabecalhovFrete.AsFloat)) <= 0);

    if fDMRecebeXML.fnc_Abrir_Nota(vFilial_Local,fDMRecebeXML.cdsCabecalhonNF.AsInteger,vCodFornecedor,fDMRecebeXML.cdsCabecalhoserie.AsString) then
    begin
      Label4.Visible := True;
      Label4.Caption := 'NOTA JÁ FOI GRAVADA!'
    end
    else
    begin
      Label4.Visible := False;
      Label4.Caption := 'Mensagem';
    end;
  end;
end;

procedure TfrmRecebeXML.BitBtn3Click(Sender: TObject);
var
  Stream, DANFE: TMemoryStream;
  Arquivo: string;
  texto: String;
  vLocalServidorNFe: String;
begin
 if (trim(vOpenDialog) = '') then
   btnAbrirXMLClick(Sender);

 if (trim(vOpenDialog) <> '') or (OpenDialog1.Execute) then
 begin
   Stream := TMemoryStream.Create;
   DANFE := TMemoryStream.Create;
   try
     if trim(vOpenDialog) <> '' then
       Stream.LoadFromFile(vOpenDialog)
     else
       Stream.LoadFromFile(OpenDialog1.FileName);
     //AbrirUTF8(OpenDialog.FileName, Stream);
     Stream.Position := 0;

     texto  := Monta_Texto(fDMRecebeXML.qFilial2CNPJ_CPF.Text,14);
     //texto  := '13685831000196';

     vLocalServidorNFe := fDMRecebeXML.qParametrosLOCALSERVIDORNFE.AsString;
     if trim(fDMRecebeXML.qFilial2LOCALSERVIDORNFE.AsString) <> '' then
       vLocalServidorNFe := fDMRecebeXML.qFilial2LOCALSERVIDORNFE.AsString;

     NFe_GerarDANFE( trim(vLocalServidorNFe),
                     //texto,'marca que é de homologação ou cancelada','Nome do cliente no canhoto',
                     texto,'','',
                     Stream,
                     DANFE,True );

    Arquivo := ExtractFilePath(Application.ExeName) + 'Temp';
    if not DirectoryExists(Arquivo) then
      CreateDir(Arquivo);

     Arquivo := Arquivo + '\DANFE_Rec_' + FormatDateTime('YYYYMMDD',Date) +  '_' + FormatDateTime('HHMMSS',Time) + '.pdf';
     if FileExists(Arquivo) then
       DeleteFile(Arquivo);

     DANFE.Position := 0;
     DANFE.SaveToFile(Arquivo);
     if trim(vNome_Arquivo_Danfe) <> '' then
     begin
       if FileExists(vNome_Arquivo_Danfe) then
         DeleteFile(vNome_Arquivo_Danfe);
     end;
     vNome_Arquivo_Danfe := Arquivo;

     ShellExecute(Application.Handle, 'Open', PChar(arquivo), nil, nil, SW_SHOWMAXIMIZED);
   finally
     FreeAndNil(DANFE);
     FreeAndNil(Stream);
   end;
 end;
end;

procedure TfrmRecebeXML.Gravar_Cliente;
begin
  fDMRecebeXML.cdsFornecedor.Edit;
  fDMRecebeXML.cdsFornecedorTP_CLIENTE.AsString := 'S';
  fDMRecebeXML.cdsFornecedor.Post;
  fDMRecebeXML.cdsFornecedor.ApplyUpdates(0);
end;

procedure TfrmRecebeXML.prc_Mover_Itens;
begin
  if fDMRecebeXML.cdsCFOPCODCFOP.AsString <> fDMRecebeXML.mItensNotaCFOP.AsString then
    fDMRecebeXML.cdsCFOP.Locate('CODCFOP',fDMRecebeXML.mItensNotaCFOP.AsString, ([LocaseInsensitive]));
  if fDMRecebeXML.cdsCFOPID_CSTICMS.AsInteger > 0 then
    fDMRecebeXML.mItensNotaID_CSTICMS.AsInteger := fDMRecebeXML.cdsCFOPID_CSTICMS.AsInteger
  else
  if fDMRecebeXML.qFilialID_CSTICMS.AsInteger > 0 then
    fDMRecebeXML.mItensNotaID_CSTICMS.AsInteger := fDMRecebeXML.qFilialID_CSTICMS.AsInteger;
  if fDMRecebeXML.cdsCFOPID_CSTIPI.AsInteger > 0 then
    fDMRecebeXML.mItensNotaID_CSTIPI.AsInteger := fDMRecebeXML.cdsCFOPID_CSTIPI.AsInteger
  else
  if fDMRecebeXML.qFilialID_CSTIPI.AsInteger > 0 then
    fDMRecebeXML.mItensNotaID_CSTIPI.AsInteger := fDMRecebeXML.qFilialID_CSTIPI.AsInteger;

  if fDMRecebeXML.cdsCFOPID_COFINS.AsInteger > 0 then
    fDMRecebeXML.mItensNotaID_Cofins.AsInteger := fDMRecebeXML.cdsCFOPID_COFINS.AsInteger
  else
  if fDMRecebeXML.qFilialID_COFINS.AsInteger > 0 then
    fDMRecebeXML.mItensNotaID_Cofins.AsInteger := fDMRecebeXML.qFilialID_COFINS.AsInteger;
  if fDMRecebeXML.cdsCFOPID_PIS.AsInteger > 0 then
    fDMRecebeXML.mItensNotaID_Pis.AsInteger := fDMRecebeXML.cdsCFOPID_PIS.AsInteger
  else
  if fDMRecebeXML.qFilialID_PIS.AsInteger > 0 then
    fDMRecebeXML.mItensNotaID_Pis.AsInteger := fDMRecebeXML.qFilialID_PIS.AsInteger;

  if fDMRecebeXML.cdsTab_CSTIPI.Locate('ID',fDMRecebeXML.mItensNotaID_CSTIPI.AsInteger,([LocaseInsensitive])) then
    fDMRecebeXML.mItensNotaCodCSTIPI.AsString := fDMRecebeXML.cdsTab_CSTIPICOD_IPI.AsString;

  fDMRecebeXML.mItensNotaCodSitTribInterno.AsInteger := fDMRecebeXML.mItensNotaID_CSTICMS.AsInteger;
  if fDMRecebeXML.cdsTab_CSTICMS.Locate('ID',fDMRecebeXML.mItensNotaID_CSTICMS.AsInteger,([LocaseInsensitive])) then
    fDMRecebeXML.mItensNotaCodSitTrib.AsString := fDMRecebeXML.cdsTab_CSTICMSCOD_CST.AsString;

  if fDMRecebeXML.mItensNotaID_Cofins.AsInteger > 0 then
  begin
    fDMRecebeXML.qCofins.Close;
    fDMRecebeXML.qCofins.ParamByName('ID').AsInteger := fDMRecebeXML.mItensNotaID_Cofins.AsInteger;
    fDMRecebeXML.qCofins.Open;
    fDMRecebeXML.mItensNotaCodCofins.AsString := fDMRecebeXML.qCofinsCODIGO.AsString;
  end;

  if fDMRecebeXML.mItensNotaID_Pis.AsInteger > 0 then
  begin
    fDMRecebeXML.qPis.Close;
    fDMRecebeXML.qPis.ParamByName('ID').AsInteger := fDMRecebeXML.mItensNotaID_Pis.AsInteger;
    fDMRecebeXML.qPis.Open;
    fDMRecebeXML.mItensNotaCodPIS.AsString := fDMRecebeXML.qCofinsCODIGO.AsString;
  end;
end;

procedure TfrmRecebeXML.Gravar_NotaFiscal_Ref;
begin
  fDMRecebeXML.cdsNotaFiscal_Ref.Insert;
  fDMRecebeXML.cdsNotaFiscal_RefID.AsInteger                := fDMRecebeXML.cdsNotaFiscalID.AsInteger;
  fDMRecebeXML.cdsNotaFiscal_RefITEM.AsInteger              := 1;
  fDMRecebeXML.cdsNotaFiscal_RefTIPO.AsString               := '13';
  fDMRecebeXML.cdsNotaFiscal_RefDESCRICAO_TIPO.AsString     := 'NFe';
  fDMRecebeXML.cdsNotaFiscal_RefNFECHAVEACESSO_REF.AsString := fDMRecebeXML.cdsNFeProtocolochNFe.AsString;
  fDMRecebeXML.cdsNotaFiscal_Ref.Post;

{
object cdsNotaFiscal_RefNFECHAVEACESSO_REF: TStringField
object cdsNotaFiscal_RefID_FORNECEDOR: TIntegerField
object cdsNotaFiscal_RefDESCRICAO_TIPO: TStringField
object cdsNotaFiscal_RefCUPOM_NUMECF: TIntegerField
object cdsNotaFiscal_RefCUPOM_NUMCOO: TIntegerField
object cdsNotaFiscal_RefCUPOM_MODELO: TStringField
 }
end;

procedure TfrmRecebeXML.prc_Copiar_Arquivo;
var
  Diretorio: String;
  Diretorio_Ori: String;
  vAnoMes: String;
  vArquivo: String;
begin
  Diretorio_Ori := ExtractFilePath(vOpenDialog);
  //if copy(Diretorio,length(Diretorio)-14,8) = 'Copiado\' then
  //  exit;
  if PosEx('Copiado',Diretorio_Ori,0) > 0 then
    exit;
  if trim(fDMRecebeXML.qParametrosENDXML_NOTAENTRADA.AsString) = '' then
    exit;
  Diretorio := fDMRecebeXML.qParametrosENDXML_NOTAENTRADA.AsString;
  if copy(Diretorio,Length(Diretorio),1) <> '\' then
    Diretorio := Diretorio + '\';
  if not DirectoryExists(Diretorio) then
    CreateDir(Diretorio);
  Diretorio := Diretorio + 'Copiado\';
  if not DirectoryExists(Diretorio) then
    CreateDir(Diretorio);
  vAnoMes := FormatFloat('0000',YearOf(DateEdit1.Date)) + FormatFloat('00',MonthOf(DateEdit1.Date));
  Diretorio := Diretorio + vAnoMes + '\';
  if not DirectoryExists(Diretorio) then
    CreateDir(Diretorio);
  vArquivo := ExtractFileName(vOpenDialog);
  MoverArquivo(Diretorio_Ori,Diretorio,vArquivo);
end;

procedure TfrmRecebeXML.MoverArquivo(Origem, Destino,Arquivo: String);
var
  o, d: PAnsiChar;
begin
  o := PAnsiChar(Origem + Arquivo);
  d := PAnsiChar(Destino + Arquivo);
  MoveFile(o,d);
end;

procedure TfrmRecebeXML.prc_Atualiza_Ref;
begin
  fDMRecebeXML.cdsProduto.Edit;
  if fDMRecebeXML.qParametrosGRAVAR_NA_REF_CODPRODFORN.AsString = 'S' then
    fDMRecebeXML.cdsProdutoREFERENCIA.AsString := fDMRecebeXML.mItensNotaCodProduto.AsString
  else
  if trim(fDMRecebeXML.qParametros_RecXMLUSA_REF_SEQUENCIAL.AsString) <> 'S' then
  begin
    fDMRecebeXML.cdsProdutoREFERENCIA.AsString      := fDMRecebeXML.cdsProdutoTIPO_REG.AsString + '.' + FormatFloat('000000',fDMRecebeXML.cdsProdutoID.AsInteger);
    fDMRecebeXML.cdsProdutoREFERENCIA_SEQ.AsInteger := fDMRecebeXML.cdsProdutoID.AsInteger;  
  end;
  fDMRecebeXML.cdsProduto.Post;
  fDMRecebeXML.cdsProduto.ApplyUpdates(0);

  //Atualiza_Preco;
end;

procedure TfrmRecebeXML.RxDBLookupCombo4Enter(Sender: TObject);
begin
  RxDBLookupCombo4.ReadOnly := (fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger > 0);
end;

procedure TfrmRecebeXML.prc_Gravar_Produto_Uni;
var
  vItemAux: Integer;
begin
  fDMRecebeXML.qProduto_Uni.Close;
  fDMRecebeXML.qProduto_Uni.ParamByName('ID').AsInteger           := fDMRecebeXML.cdsProdutoID.AsInteger;
  fDMRecebeXML.qProduto_Uni.ParamByName('ITEM_UNIDADE').AsInteger := fDMRecebeXML.mItensNotaItem_Unidade.AsInteger;
  fDMRecebeXML.qProduto_Uni.Open;
  if not fDMRecebeXML.qProduto_Uni.IsEmpty then
    exit;

  try
    fDMRecebeXML.cdsProduto_Uni.Close;
    fDMRecebeXML.sdsProduto_Uni.ParamByName('ID').AsInteger := fDMRecebeXML.cdsProdutoID.AsInteger;
    fDMRecebeXML.cdsProduto_Uni.Open;
    fDMRecebeXML.cdsProduto_Uni.Last;
    vItemAux := fDMRecebeXML.cdsProduto_UniITEM.AsInteger + 1;

    fDMRecebeXML.cdsProduto_Uni.Insert;
    fDMRecebeXML.cdsProduto_UniID.AsInteger   := fDMRecebeXML.cdsProdutoID.AsInteger;
    fDMRecebeXML.cdsProduto_UniITEM.AsInteger := vItemAux;
    fDMRecebeXML.cdsProduto_UniITEM_UNIDADE.AsInteger := fDMRecebeXML.mItensNotaItem_Unidade.AsInteger;
    fDMRecebeXML.cdsProduto_UniUNIDADE.AsString       := fDMRecebeXML.mItensNotaUnidadeInterno.AsString;
    fDMRecebeXML.cdsProduto_UniUNIDADE_CONV.AsString  := fDMRecebeXML.mItensNotaUnidade.AsString;
    fDMRecebeXML.cdsProduto_Uni.Post;
    fDMRecebeXML.cdsProduto_Uni.ApplyUpdates(0);
  except
    on e: Exception do
    begin
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar a tabela de Produto_Uni: ' + #13 + e.Message);
    end
  end;                         
end;

procedure TfrmRecebeXML.btnConfirmarClick(Sender: TObject);
begin
  if fDMRecebeXML.mItensNotaItem.AsInteger <= 0 then
    exit;

   //Tirado dia 27/04/2016
  //if fDMRecebeXML.mItensNotaUnidade.AsString = fDMRecebeXML.mItensNotaUnidadeInterno.AsString then
  //  fDMRecebeXML.mItensNotaQtdPacote.AsInteger := 0;

  if fDMRecebeXML.mItensNota.State in [dsEdit] then
    fDMRecebeXML.mItensNota.Post;
end;

procedure TfrmRecebeXML.Gravar_Movimento;
var
  vDescAux: Real;
begin
  vDescAux := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat));
  vID_Mov  := fDMMovimento.fnc_Gravar_Movimento(fDMRecebeXML.cdsNotaFiscal_ItensID_MOVIMENTO.AsInteger,
                                               fDMRecebeXML.cdsNotaFiscalFILIAL.AsInteger,
                                               fDMRecebeXML.cdsNotaFiscal_ItensITEM.AsInteger,
                                               fDMRecebeXML.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,0,
                                               fDMRecebeXML.cdsNotaFiscal_ItensID.AsInteger,
                                               fDMRecebeXML.cdsNotaFiscal_ItensID_CFOP.AsInteger,
                                               fDMRecebeXML.cdsNotaFiscalID_CLIENTE.AsInteger,
                                               fDMRecebeXML.cdsNotaFiscalID_CLIENTETRIANG.AsInteger,
                                               fDMRecebeXML.cdsNotaFiscalNUMNOTA.AsInteger,0,'NTE',
                                               fDMRecebeXML.cdsNotaFiscalSERIE.AsString,
                                               fDMRecebeXML.cdsNotaFiscalTIPO_NOTA.AsString,'NOT',
                                               fDMRecebeXML.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat,
                                               vDescAux,
                                               fDMRecebeXML.cdsNotaFiscal_ItensVLR_FRETE.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMS.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMSSUBST.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMSSIMPLES.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensVLR_ISSQN.AsFloat,0,
                                               fDMRecebeXML.cdsNotaFiscal_ItensVLR_IPI.AsFloat,0,
                                               fDMRecebeXML.cdsNotaFiscal_ItensVLR_PIS.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensVLR_COFINS.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat,0,
                                               fDMRecebeXML.cdsNotaFiscal_ItensVLR_IMPORTACAO.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensVLR_SEGURO.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensVLR_OUTRASDESPESAS.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensVLR_ADUANEIRA.AsFloat,
                                               0,0,0,0,fDMRecebeXML.cdsNotaFiscalBASE_ICMS.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensBASE_ICMSSUBST.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensBASE_ICMSSIMPLES.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensQTD.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensPERC_IPI.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensPERC_ICMS.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscalPERC_ICMSSIMPLES.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensPERC_PIS.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensPERC_COFINS.AsFloat,0,0,0,
                                               fDMRecebeXML.cdsNotaFiscalCANCELADA.AsString,
                                               fDMRecebeXML.cdsNotaFiscalNFEDENEGADA.AsString,
                                               fDMRecebeXML.cdsNotaFiscal_ItensUNIDADE.AsString,'',
                                               fDMRecebeXML.cdsNotaFiscal_ItensNOME_PRODUTO.AsString,
                                               fDMRecebeXML.cdsNotaFiscal_ItensREFERENCIA.AsString,
                                               fDMRecebeXML.cdsNotaFiscalDTEMISSAO.AsDateTime,
                                               fDMRecebeXML.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime,
                                               fDMRecebeXML.cdsNotaFiscal_ItensTAMANHO.AsString,
                                               fDMRecebeXML.cdsNotaFiscalTIPO_PRAZO.AsString,
                                               fDMRecebeXML.cdsNotaFiscalID_CONDPGTO.AsInteger,0,0,0,0,
                                               fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMS_UF_REMET.AsFloat,
                                               fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMS_UF_DEST.AsFloat,1,
                                               fDMRecebeXML.cdsNotaFiscal_ItensPRECO_CUSTO_TOTAL.AsFloat,'N');
end;

procedure TfrmRecebeXML.DBEdit70Exit(Sender: TObject);
begin
  if StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) > 0 then
    fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean := True;
end;

procedure TfrmRecebeXML.RxDBLookupCombo2Change(Sender: TObject);
begin
  if fDMRecebeXML.mItensNota.State in [dsEdit] then
    fDMRecebeXML.mItensNotaCFOP.AsString := RxDBLookupCombo2.Text;
end;

procedure TfrmRecebeXML.RxDBLookupCombo3Change(Sender: TObject);
begin
  fDMRecebeXML.mItensNotaCodSitTrib.AsString := RxDBLookupCombo3.Text;
end;

procedure TfrmRecebeXML.SpeedButton1Click(Sender: TObject);
begin
  fDMRecebeXML.cdsCliente.Close;
  fDMRecebeXML.cdsCliente.Open;
end;

procedure TfrmRecebeXML.RxDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if RxDBLookupCombo1.Text <> '' then
      vCodPessoa_Pos := RxDBLookupCombo1.KeyValue;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    FreeAndNil(frmSel_Pessoa);
    if vCodPessoa_Pos > 0 then
      RxDBLookupCombo1.KeyValue := vCodPessoa_Pos;
    RxDBLookupCombo1.SetFocus;
  end;
end;

procedure TfrmRecebeXML.prc_scroll(DataSet: TDataSet);
begin
  prc_Mostrar_Cor;
  if (trim(fDMRecebeXML.mItensNotaNumPedido.AsString) <> '') and (fDMRecebeXML.mItensNotaItemPedido.AsInteger > 0) and (fDMRecebeXML.mItensNotaID_Pedido.AsInteger <= 0) then
  begin
    Label110.Font.Color := clRed;
    Label110.Font.Style := [fsBold];
    Label111.Font.Color := clRed;
    Label111.Font.Style := [fsBold];
    Label112.Font.Color := clRed;
    Label112.Font.Style := [fsBold];
  end
  else
  begin
    Label110.Font.Color := clWindowText;
    Label110.Font.Style := [];
    Label111.Font.Color := clWindowText;
    Label111.Font.Style := [];
    Label112.Font.Color := clWindowText;
    Label112.Font.Style := [];
  end;
end;

procedure TfrmRecebeXML.prc_Mostrar_Cor;
begin
  RxDBLookupCombo7.Visible := (fDMRecebeXML.mItensNotaUsa_Cor.AsString = 'S');
  Label115.Visible         := (fDMRecebeXML.mItensNotaUsa_Cor.AsString = 'S');
  if fDMRecebeXML.mItensNotaUsa_Cor.AsString = 'S' then
    fDMRecebeXML.prc_Abrir_Combinacao(fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger);
end;

procedure TfrmRecebeXML.RxDBComboBox1Click(Sender: TObject);
begin
  if not (fDMRecebeXML.mItensNota.State in [dsEdit,dsInsert]) then
    fDMRecebeXML.mItensNota.Edit;
  case RxDBComboBox1.ItemIndex of
    0: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'G';
    1: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'C';
    2: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'R';
    3: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'I';
  end;
  fDMRecebeXML.mItensNotaCFOPInterno.AsInteger  := fnc_Busca_CFOP;
  fDMRecebeXML.mItensNotaID_CFOP_NFCe.AsInteger := vID_CFOP_NFCe;
  fDMRecebeXML.mItensNotaCodCFOP_NFCe.AsString  := vCODCFOP_NFCe;
  if fDMRecebeXML.mItensNotaCFOPInterno.AsInteger > 0 then
    fDMRecebeXML.mItensNotaCFOP.AsString := fDMRecebeXML.qCFOPCODCFOP.AsString
  else
    fDMRecebeXML.mItensNotaCFOP.AsString := '';
  //13/11/2017  Verifica se atualiza a NCM ou o Preço de custo
  prc_Verifica_Atualizacao_NCM_Custo;
  //**********************
  
  prc_verifica_TipoVenda;


  fDMRecebeXML.mItensNota.Post;
end;

function TfrmRecebeXML.fnc_Item_OK: Boolean;
begin
  if (fDMRecebeXML.qParametros_RecXMLCONTROLAR_GRAVA_PROD.AsString = 'S') and not(ckAssociar.Checked) then
  begin
    Result := True;
    exit;
  end;
  Result := False;
  fDMRecebeXML.cdsProduto_Forn.Close;
  fDMRecebeXML.sdsProduto_Forn.CommandText := fDMRecebeXML.ctProduto_Forn
                                            + ' WHERE PF.id_fornecedor = :ID_FORNECEDOR'
                                            + ' AND PF.cod_material_forn = :COD_MATERIAL_FORN'
                                            + ' AND PF.id <> :ID '
                                            + ' AND P.INATIVO = ' + QuotedStr('N');
  fDMRecebeXML.sdsProduto_Forn.ParamByName('ID_FORNECEDOR').AsInteger    := fDMRecebeXML.mItensNotaCodFornecedor.AsInteger;
  fDMRecebeXML.sdsProduto_Forn.ParamByName('COD_MATERIAL_FORN').AsString := fDMRecebeXML.mItensNotaCodProduto.AsString;
  fDMRecebeXML.sdsProduto_Forn.ParamByName('ID').AsInteger               := fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger;
  fDMRecebeXML.cdsProduto_Forn.Open;
  if fDMRecebeXML.cdsProduto_Forn.IsEmpty then
    Result := True
  else
    Result := False;
end;

function TfrmRecebeXML.fnc_erro: Boolean;
var
  vErro: String;
  vErroProd: String;
  vMsgAux: WideString;
  vSenhaAux: String;
begin
  Result := False;
  if (fDMRecebeXML.qParametrosPROCURAR_POR_REF_XML.AsString = 'S') then
    exit;
  vErro     := '';
  vErroProd := '';
  //if rxdbLocalEstoque.Text <> '' then
  if (vID_Local_Estoque <= 0) and (fDMRecebeXML.qParametrosUSA_LOCAL_ESTOQUE.AsString <> 'S') then
  begin
    vID_Local_Estoque := fnc_Verificar_Local(fDMRecebeXML.qParametrosUSA_LOCAL_ESTOQUE.AsString);
    if (vID_Local_Estoque <= 0) and (fDMRecebeXML.qParametrosUSA_LOCAL_ESTOQUE.AsString <> 'S') then
      vID_Local_Estoque := 1;
  end;
  if vID_Local_Estoque <= 0 then
    vErro := '*** Local do Estoque não informado!';
  if Trim(vErro) = '' then
  begin
    vMsgAux   := '';
    vSenhaAux := '';
    fDMRecebeXML.mItensNota.First;
    while not fDMRecebeXML.mItensNota.Eof do
    begin
      if (fDMRecebeXML.mItensNotaCFOPInterno.AsString = '0') or (fDMRecebeXML.mItensNotaCFOPInterno.AsString = '') then
        vErro := '*** Existem itens sem a natureza de operação (CFOP)'
      else
      if (UpperCase(fDMRecebeXML.mItensNotaUnidade.AsString) <> UpperCase(fDMRecebeXML.mItensNotaUnidadeInterno.AsString)) and
         (StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) > 0) and not(fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean) then
        vErro := '*** Qtd. da conversão informada e não está marcado para converter a unidade de medida!'
      else
      if (UpperCase(fDMRecebeXML.mItensNotaUnidade.AsString) <> UpperCase(fDMRecebeXML.mItensNotaUnidadeInterno.AsString)) and
         (StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) <= 0) and (fDMRecebeXML.mItensNotaConverter_Unid_Medida.AsBoolean) then
        vErro := '*** Opção de converter unidade de medida marcada e quantidade para converter zerada!'
      else
      if UpperCase(fDMRecebeXML.mItensNotaUnidade.AsString) <> UpperCase(fDMRecebeXML.mItensNotaUnidadeInterno.AsString) then
      begin
        if (StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) <= 0) then
          vMsgAux := vMsgAux + #13 + 'Item: ' + fDMRecebeXML.mItensNotaItem.AsString;
      end
      else
      begin
        if fnc_Item_Inativo then
          vErroProd := vErroProd + #13 + '*** Produto ' + fDMRecebeXML.mItensNotaCodProduto.AsString + ' está inativo no ID do Produto: ' + fDMRecebeXML.qProdutoInativoID.AsString;
        if not fnc_Item_OK then
          vErroProd := vErroProd + #13 + '*** Produto ' + fDMRecebeXML.mItensNotaCodProduto.AsString + ' já está cadastrado no ID do Produto: ' + fDMRecebeXML.cdsProduto_FornID.AsString;
      end;
      if fDMRecebeXML.qParametros_OCPERMITIR_ENT_MAIOR.AsString <> 'S' then
      begin
        if fDMRecebeXML.mItensNotaID_Pedido.AsString <> '' then
        begin
          fDMRecebeXML.cdsOC.Close;
          fDMRecebeXML.sdsOC.CommandText := fDMRecebeXML.ctOC +
                                            ' AND PE.ID = ' + fDMRecebeXML.mItensNotaID_Pedido.AsString +
                                            ' AND PI.ITEM = ' + fDMRecebeXML.mItensNotaItemPedido.AsString;
          fDMRecebeXML.cdsOC.Open;
        if StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaQtd.AsFloat * fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) >
           StrToFloat(FormatFloat('0.0000',fDMRecebeXML.cdsOCQTD_RESTANTE.AsFloat)) then
          vErro := vErro + #13 + 'Item ' + fDMRecebeXML.mItensNotaItem.AsString + ': Quantidade da nota maior que a da OC!';
        end;
      end;
      if trim(vErro) <> '' then
        fDMRecebeXML.mItensNota.Last;
      fDMRecebeXML.mItensNota.Next;
    end;
    if trim(vMsgAux) <> '' then
    begin
      vMsgAux := 'Itens abaixo com Unidade de medida diferente e não foi feita a conversão: ' + #13 + vMsgAux;
      vSenhaAux := InputBox('Informe a Senha',vMsgAux + #13+ #13 + 'Informar a senha para confirmar:', '');
      if vSenhaAux <> '12' then
        vErro := vMsgAux;
    end;
  end;
  if trim(vErroProd) <> '' then
    vErro := vErro + #13 + #13 + vErroProd;
  if trim(vErro) <> '' then
  begin
    MessageDlg(vErro, mtError, [mbOk], 0);
    Result := True;
  end;
end;

function TfrmRecebeXML.fnc_Item_Inativo: Boolean;
begin
  Result := False;
  fDMRecebeXML.qProdutoInativo.Close;
  fDMRecebeXML.qProdutoInativo.ParamByName('ID').AsInteger := fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger;
  fDMRecebeXML.qProdutoInativo.Open;
  if fDMRecebeXML.qProdutoInativoINATIVO.AsString = 'S' then
    Result := True;
end;

procedure TfrmRecebeXML.rxdbLocalEstoqueExit(Sender: TObject);
begin
  if rxdbLocalEstoque.Text <> '' then
    vID_Local_Estoque := rxdbLocalEstoque.KeyValue
  else
    vID_Local_Estoque := 0;
end;

procedure TfrmRecebeXML.RxDBLookupCombo8Change(Sender: TObject);
begin
  if fDMRecebeXML.mItensNota.State in [dsEdit] then
    fDMRecebeXML.mItensNotaCodCFOP_NFCe.AsString := RxDBLookupCombo8.Text;
end;

function TfrmRecebeXML.fnc_Montar_PrecoCompra(Unidade: String): Real;
var
  vVlrAux: Real;
begin
  vVlrAux := fDMRecebeXML.mItensNotaVlrUnitario.AsFloat;
  if (Unidade <> fDMRecebeXML.mItensNotaUnidade.AsString) and
     (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaQtd.AsFloat)) > 0) then
  begin
    //Alterado dia 12/05/2015
    //vVlrAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat / (fDMRecebeXML.mItensNotaQtdPacote.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat)));
    vVlrAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
  end;
  Result := StrToFloat(FormatFloat('0.00000',vVlrAux));
end;

function TfrmRecebeXML.fnc_Montar_PrecoCustoTotal(Unidade: String ; CustoTotal :Boolean = True): Real;
var
  vVlrAux: Real;
  vVlrIPIAux: Real;
  vVlrFreteAux: Real;
  vVlrStAux: Real;
  vPercFrete: Real;
  vVlrICMSAux: Real;
  vVlrPisCofinsAux: Real;
  //18/01/2018
  vVlrSeguro, vVlrOutro, vVlrAduaneira, vVlrII, vVlrAFRMM, vVlrTaxaSiscomex: Real;
  vVlrIPISub: Real;
  //***************

begin
  vVlrIPIAux       := StrToFloat(FormatFloat('0.00',0));
  vVlrFreteAux     := StrToFloat(FormatFloat('0.00',0));
  vVlrStAux        := StrToFloat(FormatFloat('0.00',0));
  vVlrICMSAux      := StrToFloat(FormatFloat('0.00',0));
  vVlrPisCofinsAux := StrToFloat(FormatFloat('0.00',0));
  vVlrSeguro       := StrToFloat(FormatFloat('0.00',0));
  vVlrOutro        := StrToFloat(FormatFloat('0.00',0));
  vVlrAduaneira    := StrToFloat(FormatFloat('0.00',0));
  vVlrII           := StrToFloat(FormatFloat('0.00',0));
  vVlrAFRMM        := StrToFloat(FormatFloat('0.00',0));
  vVlrTaxaSiscomex := StrToFloat(FormatFloat('0.00',0));
  vVlrIPISub       := StrToFloat(FormatFloat('0.00',0));
  vVlrAux      := fDMRecebeXML.mItensNotaVlrUnitario.AsFloat;
  if StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsCabecalhovFrete.AsFloat)) > 0 then
    vPercFrete := 0
  else
  if ceVlrFrete_Nota.Value > 0 then
    vPercFrete := StrToFloat(FormatFloat('0.0000',ceVlrFrete_Nota.Value / fDMRecebeXML.cdsCabecalhovNF.AsFloat * 100));

  //11/11/2016
  if (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrIPI.AsFloat)) > 0) then
  begin
    if (fDMRecebeXML.mItensNotaSOMAR_IPI_NO_CUSTO.AsString = 'S') then
      vVlrIPIAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrIPI.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat))
    else
    if (fDMRecebeXML.mItensNotaSUB_IPI_Custo.AsString = 'S') then
      vVlrIPISub := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrIPI.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat))
  end;
  if (fDMRecebeXML.mItensNotaSOMAR_FRETE_NO_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrFrete.AsFloat)) > 0) then
    vVlrFreteAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrFrete.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat));
  //**************************
  //22/02/2017
  if (fDMRecebeXML.mItensNotaSOMAR_ST_NO_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrIcmsST.AsFloat)) > 0) then
    vVlrStAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrIcmsST.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat));
  //******************
  //02/11/2017
  if (fDMRecebeXML.mItensNotaSUB_ICMS_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrIcms.AsFloat)) > 0) and
    (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrIcmsST.AsFloat)) <= 0 ) then
    vVlrICMSAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrIcms.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat));
  if (fDMRecebeXML.mItensNotaSUB_PISCOFINS_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrPis.AsFloat + fDMRecebeXML.mItensNotaVlrCofins.AsFloat)) > 0) then
    vVlrPisCofinsAux := StrToFloat(FormatFloat('0.00000',(fDMRecebeXML.mItensNotaVlrPis.AsFloat + fDMRecebeXML.mItensNotaVlrCofins.AsFloat) / fDMRecebeXML.mItensNotaQtd.AsFloat));
  //*************
  //if (fDMRecebeXML.mItensNotaSUB_ICMS_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrPis.AsFloat + fDMRecebeXML.mItensNotaVlrCofins.AsFloat)) > 0) then
  //  vVlrPisCofinsAux := StrToFloat(FormatFloat('0.00000',(fDMRecebeXML.mItensNotaVlrPis.AsFloat + fDMRecebeXML.mItensNotaVlrCofins.AsFloat) / fDMRecebeXML.mItensNotaQtd.AsFloat));
  if (Unidade <> fDMRecebeXML.mItensNotaUnidade.AsString) and
     (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaQtd.AsFloat)) > 0) then
  begin
    //Alterado dia 12/05/2015
    //vVlrAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat / (fDMRecebeXML.mItensNotaQtdPacote.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat)));
    vVlrAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
    //11/11/2016
    if (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrIPI.AsFloat)) > 0) then
    begin
      if (fDMRecebeXML.mItensNotaSOMAR_IPI_NO_CUSTO.AsString = 'S') then
        vVlrIPIAux := StrToFloat(FormatFloat('0.00000',vVlrIPIAux / fDMRecebeXML.mItensNotaQtdPacote.AsFloat))
      else
      if (fDMRecebeXML.mItensNotaSUB_IPI_Custo.AsString = 'S') then
        vVlrIPISub := StrToFloat(FormatFloat('0.00000',vVlrIPISub / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
    end;
    if (fDMRecebeXML.mItensNotaSOMAR_FRETE_NO_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrFrete.AsFloat)) > 0) then
      vVlrFreteAux := StrToFloat(FormatFloat('0.00000',vVlrFreteAux / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
    //*********************
    //22/02/2017
    if (fDMRecebeXML.mItensNotaSOMAR_ST_NO_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrIcmsST.AsFloat)) > 0) then
      vVlrStAux := StrToFloat(FormatFloat('0.00000',vVlrStAux / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
    //**************
    //02/11/2017
    if (fDMRecebeXML.mItensNotaSUB_ICMS_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',vVlrICMSAux)) > 0) then
      vVlrICMSAux := StrToFloat(FormatFloat('0.00000',vVlrICMSAux / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
    if (fDMRecebeXML.mItensNotaSUB_PISCOFINS_CUSTO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',vVlrPisCofinsAux)) > 0) then
      vVlrPisCofinsAux := StrToFloat(FormatFloat('0.00000',vVlrPisCofinsAux / fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
    //******
  end;
  //11/11/2016
  if StrToFloat(FormatFloat('0.0000',vPercFrete)) > 0 then
    vVlrFreteAux := StrToFloat(FormatFloat('0.00', vVlrAux * vPercFrete / 100));
  vVlrAux := StrToFloat(FormatFloat('0.00000',vVlrAux + vVlrIPIAux + vVlrFreteAux + vVlrStAux));
  vVlrAux := StrToFloat(FormatFloat('0.00000',vVlrAux - vVlrICMSAux - vVlrPisCofinsAux - vVlrIPISub));
  //*************************
  Result := StrToFloat(FormatFloat('0.00000',vVlrAux));
end;

procedure TfrmRecebeXML.prc_Aplicar_Margem;
var
  vVlrAux: Real;
begin
  if fDMRecebeXML.qParametros_RecXMLMOSTRAR_VLR_VENDA.AsString = 'S' then
    exit;

  if fDMRecebeXML.qParametros_ProdOPCAO_APLICAR_MARGEM.AsString <> 'C' then
  begin
    if (fDMRecebeXML.qParametrosUSA_PERC_MARGEM_RECEPCAO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaPerc_Margem.AsFloat)) > 0) then
      fDMRecebeXML.cdsProdutoPERC_MARGEMLUCRO.AsFloat := fDMRecebeXML.mItensNotaPerc_Margem.AsFloat;
    if (StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsProdutoPERC_MARGEMLUCRO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.cdsProdutoPRECO_CUSTO.AsFloat)) > 0) then
    begin
      vVlrAux := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.cdsProdutoPRECO_CUSTO.AsFloat * fDMRecebeXML.cdsProdutoPERC_MARGEMLUCRO.AsFloat / 100));
      vVlrAux := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.cdsProdutoPRECO_CUSTO.AsFloat + vVlrAux));
      fDMRecebeXML.cdsProdutoPRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.0000',vVlrAux));
    end;
  end
  else
  begin
    if (fDMRecebeXML.qParametrosUSA_PERC_MARGEM_RECEPCAO.AsString = 'S') and (StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaPerc_Margem.AsFloat)) > 0) then
      fDMRecebeXML.cdsProdutoPERC_MARGEMLUCRO.AsFloat := StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaPerc_Margem.AsFloat));
    if (StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsProdutoPERC_MARGEMLUCRO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat)) > 0) then
    begin
      vVlrAux := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat * fDMRecebeXML.cdsProdutoPERC_MARGEMLUCRO.AsFloat / 100));
      vVlrAux := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.cdsProdutoPRECO_CUSTO_TOTAL.AsFloat + vVlrAux));
      fDMRecebeXML.cdsProdutoPRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.0000',vVlrAux));
    end;
  end;
end;

procedure TfrmRecebeXML.DBEdit76Exit(Sender: TObject);
begin
  prc_Monta_Grupo('S');
end;

procedure TfrmRecebeXML.DBEdit76KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vID_Grupo_Pos := fDMRecebeXML.mItensNotaID_Grupo.AsInteger;
    frmSel_Grupo  := TfrmSel_Grupo.Create(Self);
    frmSel_Grupo.ShowModal;
    if not (fDMRecebeXML.mItensNota.State in [dsEdit]) then
      fDMRecebeXML.mItensNota.Edit;
    fDMRecebeXML.mItensNotaID_Grupo.AsInteger := vID_Grupo_Pos;
    prc_Monta_Grupo('S');
    fDMRecebeXML.mItensNota.Post;
  end;
end;

procedure TfrmRecebeXML.prc_Monta_Grupo(Mostra_Msg: String);
begin
  if not (fDMRecebeXML.mItensNota.State in [dsEdit,dsInsert]) then
    exit;

  if fDMRecebeXML.mItensNotaID_Grupo.AsInteger > 0 then
  begin
    fDMRecebeXML.qGrupo.Close;
    fDMRecebeXML.qGrupo.ParamByName('ID').AsInteger := fDMRecebeXML.mItensNotaID_Grupo.AsInteger;
    fDMRecebeXML.qGrupo.Open;
    if fDMRecebeXML.qGrupo.IsEmpty then
    begin
      fDMRecebeXML.mItensNotaNome_Grupo.AsString := '';
      fDMRecebeXML.mItensNotaID_Grupo.Clear;
      if Mostra_Msg = 'S' then
        MessageDlg('*** ID do grupo não encontrado!', mtInformation, [mbOk], 0);
    end
    else
      fDMRecebeXML.mItensNotaNome_Grupo.AsString := fDMRecebeXML.qGrupoCODIGO.AsString + ' ' + fDMRecebeXML.qGrupoNOME.AsString;
  end
  else
    fDMRecebeXML.mItensNotaNome_Grupo.AsString := '';
end;

procedure TfrmRecebeXML.Grava_Produto_Lote;
begin
end;

procedure TfrmRecebeXML.DBCheckBox3Click(Sender: TObject);
begin
  DBCheckBox4.Visible := DBCheckBox3.Checked;
  DBCheckBox5.Visible := DBCheckBox3.Checked;
  DBCheckBox6.Visible := DBCheckBox3.Checked;
  DBCheckBox7.Visible := DBCheckBox3.Checked;
  DBCheckBox8.Visible := DBCheckBox3.Checked;
end;

procedure TfrmRecebeXML.SpeedButton2Click(Sender: TObject);
begin
  if MessageDlg('Deseja gravar a finalidade para os itens?', mtConfirmation,[mbOk,mbNo],0)=mrNo then
    exit;

  fDMRecebeXML.mItensNota.First;
  while not fDMRecebeXML.mItensNota.Eof do
  begin
    fDMRecebeXML.mItensNota.Edit;
    if cbFinalidade.ItemIndex <> 3 then
    begin
      case cbFinalidade.ItemIndex of
        0: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'C';
        1: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'R';
        2: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'I';
        4: fDMRecebeXML.mItensNotaTipoVenda.AsString := 'G';
      end;
    end
    else
    begin
      fDMRecebeXML.mItensNotaTipoVenda.AsString := fDMRecebeXML.mItensNotaTipoVenda_Prod.AsString;
    end;
    fDMRecebeXML.mItensNota.Post;
    RxDBComboBox1Click(Sender);
    
    fDMRecebeXML.mItensNota.Next;
  end;
end;

procedure TfrmRecebeXML.prc_verifica_TipoVenda;
var
  vTexto: String;
begin
  vTexto := 'CON';
  if fDMRecebeXML.mItensNotaTipoVenda.AsString = 'C' then
    vTexto := 'CON'
  else
  if fDMRecebeXML.mItensNotaTipoVenda.AsString = 'R' then
    vTexto := 'REV'
  else
  if fDMRecebeXML.mItensNotaTipoVenda.AsString = 'I' then
    vTexto := 'IND';

  if not(fDMRecebeXML.mItensNota.State in [dsEdit,dsInsert]) then
    fDMRecebeXML.mItensNota.Edit;

  fDMRecebeXML.mItensNotaSOMAR_IPI_NO_CUSTO.AsString  := fDMRecebeXML.qParametros_Custo.FieldByName(vTexto+'_SOMAR_IPI').AsString;
  fDMRecebeXML.mItensNotaSOMAR_ST_NO_CUSTO.AsString   := fDMRecebeXML.qParametros_Custo.FieldByName(vTexto+'_SOMAR_ST').AsString;
  fDMRecebeXML.mItensNotaSUB_ICMS_CUSTO.AsString      := fDMRecebeXML.qParametros_Custo.FieldByName(vTexto+'_SUB_ICMS').AsString;
  fDMRecebeXML.mItensNotaSUB_IPI_Custo.AsString       := fDMRecebeXML.qParametros_Custo.FieldByName(vTexto+'_SUB_IPI').AsString;
  fDMRecebeXML.mItensNotaSUB_PISCOFINS_CUSTO.AsString := fDMRecebeXML.qParametros_Custo.FieldByName(vTexto+'_SUB_PISCOFINS').AsString;
  fDMRecebeXML.mItensNotaSOMAR_FRETE_NO_CUSTO.AsString := fDMRecebeXML.qParametros_Custo.FieldByName(vTexto+'_SOMAR_FRETE').AsString;
end;

procedure TfrmRecebeXML.prc_Verifica_Atualizacao_NCM_Custo;
var
  vFlag: Boolean;
begin
  if trim(fDMRecebeXML.mItensNotaCFOPInterno.AsString) = '' then
    exit;

  if not fDMRecebeXML.cdsCFOP.Locate('ID',fDMRecebeXML.mItensNotaCFOPInterno.AsInteger,([LocaseInsensitive])) then
    exit;

  vFlag := False;  
  if not (fDMRecebeXML.mItensNota.State in [dsEdit,dsInsert]) then
  begin
    fDMRecebeXML.mItensNota.Edit;
    vFlag := True;
  end;

  if fDMRecebeXML.cdsCFOPALT_NCM_CUSTO.AsString = 'S' then
  begin
    fDMRecebeXML.mItensNotaAtualizarNCM.AsBoolean        := True;
    fDMRecebeXML.mItensNotaAtualizarPreco.AsBoolean      := True;
    fDMRecebeXML.mItensNotaAtualizarCustoTotal.AsBoolean := True;
  end
  else
  begin
    fDMRecebeXML.mItensNotaAtualizarNCM.AsBoolean        := False;
    fDMRecebeXML.mItensNotaAtualizarPreco.AsBoolean      := False;
    fDMRecebeXML.mItensNotaAtualizarCustoTotal.AsBoolean := False;
  end;
  if vFlag then
    fDMRecebeXML.mItensNota.Post;
end;

procedure TfrmRecebeXML.RxDBLookupCombo2Exit(Sender: TObject);
begin
  //13/11/2017  Verifica se atualiza a NCM ou o Preço de custo
  prc_Verifica_Atualizacao_NCM_Custo;
  //**********************
end;

procedure TfrmRecebeXML.prc_Ajuste_Prod_Pela_OC(PeloXML: Boolean);
begin
  if PeloXML then
  begin
    if (fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger > 0) and (fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger <> vCodProduto_Pos) then
      exit;
  end;

  fDMRecebeXML.mItensNota.Edit;
  fDMRecebeXML.mItensNotaNumPedido.AsString          := fDMRecebeXML.vNum_Pedido;
  fDMRecebeXML.mItensNotaID_Pedido.AsInteger         := fDMRecebeXML.vID_Pedido;
  fDMRecebeXML.mItensNotaItemPedido.AsInteger        := fDMRecebeXML.vItem_Pedido;
  fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger := vCodProduto_Pos;
  fDMRecebeXML.mItensNotaReferencia_Int.AsString     := vReferencia_Pos;
  fDMRecebeXML.mItensNotaUsa_Cor.AsString            := vUsa_Cor_Pos;
  fDMRecebeXML.mItensNotaUnidadeInterno.AsString     := fDMRecebeXML.vUnidade;
  if fDMRecebeXML.mItensNotaUsa_Cor.AsString = 'S' then
    fDMRecebeXML.mItensNotaID_Cor.AsInteger := vID_Cor_Pos;
  fDMRecebeXML.mItensNotaUsa_Preco_Cor.AsString      := vUsa_Preco_Cor_Pos;

  //22/01/2019 foi incluido o if para ler o produto somente quando for associado
  if ((fDMRecebeXML.qParametros_RecXMLCONTROLAR_GRAVA_PROD.AsString = 'S') and (ckAssociar.Checked)) or
     (trim(fDMRecebeXML.qParametros_RecXMLCONTROLAR_GRAVA_PROD.AsString) <> 'S') then
  begin
    if fDMRecebeXML.cdsProduto.Locate('ID',fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger,([LocaseInsensitive])) then
    begin
      fDMRecebeXML.mItensNotaPerc_Margem.AsFloat := fDMRecebeXML.cdsProdutoPERC_MARGEMLUCRO.AsFloat;
      fDMRecebeXML.mItensNotaID_Grupo.AsInteger  := fDMRecebeXML.cdsProdutoID_GRUPO.AsInteger;
      prc_Monta_Grupo('N');
    end;
  end;
  fDMRecebeXML.mItensNota.Post;
  prc_Mostrar_Cor;
end;

procedure TfrmRecebeXML.prc_Abrir_OC;
begin
  fDMRecebeXML.cdsOC.Close;
  fDMRecebeXML.sdsOC.CommandText := fDMRecebeXML.ctOC
                                  + ' AND PE.NUM_PEDIDO = ' + fDMRecebeXML.cdsDetalhexPed.AsString
                                  + ' AND PE.ID_CLIENTE = ' + IntToStr(vCodFornecedor)
                                  + ' AND PI.ITEM = ' + fDMRecebeXML.cdsDetalhenItemPed.AsString;
  fDMRecebeXML.cdsOC.Open;
end;

procedure TfrmRecebeXML.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then //CTRL W
    ckUsaNome.Visible := not(ckUsaNome.Visible);
end;

procedure TfrmRecebeXML.BitBtn5Click(Sender: TObject);
begin
  if not(fDMRecebeXML.mItensNota.State in [dsEdit,dsInsert]) then
    fDMRecebeXML.mItensNota.Edit;
  fDMRecebeXML.mItensNotaPreco_Custo_Total.AsFloat := StrToFloat(FormatFloat('0.00000',fnc_Montar_PrecoCustoTotal(fDMRecebeXML.mItensNotaUnidade.AsString)));
  fDMRecebeXML.mItensNota.Post;
end;

procedure TfrmRecebeXML.ComboBox1Change(Sender: TObject);
begin
  if fDMRecebeXML.qParametros_RecXMLUSA_REF_SEQUENCIAL.AsString = 'S' then
  begin
    if fDMRecebeXML.mItensNota.RecordCount > 0 then
    begin
      if MessageDlg('Deseja buscar a próxima Sequencia da Referência?', mtConfirmation,[mbOk,mbNo],0)=mrYes then
        CurrencyEdit2.AsInteger := fnc_Proxima_Ref;
    end;
  end;
end;

function TfrmRecebeXML.fnc_Proxima_Ref: Integer;
begin
  fDMRecebeXML.qRefSeq.Close;
  case ComboBox1.ItemIndex of
    0: fDMRecebeXML.qRefSeq.ParamByName('TIPO_REG').AsString := 'P';
    1: fDMRecebeXML.qRefSeq.ParamByName('TIPO_REG').AsString := 'M';
    2: fDMRecebeXML.qRefSeq.ParamByName('TIPO_REG').AsString := 'C';
  end;
  fDMRecebeXML.qRefSeq.Open;
  Result := fDMRecebeXML.qRefSeqREFERENCIA_SEQ.AsInteger;
  Result := Result + 1;
end;

procedure TfrmRecebeXML.CurrencyEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = VK_RETURN) and (CurrencyEdit2.AsInteger > 0) then
  begin
    if MessageDlg('Deseja gerar as referências internas na sequencia?', mtConfirmation,[mbOk,mbNo],0)=mrYes then
      prc_Gerar_Ref;
  end;
end;

procedure TfrmRecebeXML.NxButton1Click(Sender: TObject);
begin
  CurrencyEdit2.AsInteger := fnc_Proxima_Ref;
end;

procedure TfrmRecebeXML.prc_Gerar_Ref;
begin
  fDMRecebeXML.mItensNota.First;
  while not fDMRecebeXML.mItensNota.Eof do
  begin
    if trim(fDMRecebeXML.mItensNotaReferencia_Int.AsString) = '' then
    begin
      fDMRecebeXML.mItensNota.Edit;
      fDMRecebeXML.mItensNotaReferencia_Int.AsString := IntToStr(CurrencyEdit2.AsInteger);
      fDMRecebeXML.mItensNota.Post;
      CurrencyEdit2.AsInteger := CurrencyEdit2.AsInteger + 1;
    end;
    fDMRecebeXML.mItensNota.Next;
  end;
end;

procedure TfrmRecebeXML.BitBtn6Click(Sender: TObject);
begin
  fDMRecebeXML.prc_Inserir_Parcela;
  ffrmRecebeXML_Duplicatas := TfrmRecebeXML_Duplicatas.Create(self);
  ffrmRecebeXML_Duplicatas.fDMRecebeXML := fDMRecebeXML;
  ffrmRecebeXML_Duplicatas.fDMRecebeXML.cdsParcelasnDup.AsString := fDMRecebeXML.cdsCabecalhonNF.AsString;
  ffrmRecebeXML_Duplicatas.ShowModal;
  FreeAndNil(ffrmRecebeXML_Duplicatas);
end;

procedure TfrmRecebeXML.BitBtn7Click(Sender: TObject);
begin
  //if fDMRecebeXML.cdsParcelas.IsEmpty then
  if fDMRecebeXML.mParc.IsEmpty then
    exit;
  fDMRecebeXML.mParc.Edit;
  ffrmRecebeXML_Duplicatas := TfrmRecebeXML_Duplicatas.Create(self);
  ffrmRecebeXML_Duplicatas.fDMRecebeXML := fDMRecebeXML;
  ffrmRecebeXML_Duplicatas.ShowModal;
  FreeAndNil(ffrmRecebeXML_Duplicatas);
end;

procedure TfrmRecebeXML.BitBtn8Click(Sender: TObject);
begin
  //if fDMRecebeXML.cdsParcelas.IsEmpty then
  if fDMRecebeXML.mParc.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMRecebeXML.mParc.Delete;
end;

procedure TfrmRecebeXML.prc_Grava_mParc;
begin
  fDMRecebeXML.mParc.Insert;
  fDMRecebeXML.mParcNumDuplicata.AsString   := fDMRecebeXML.cdsParcelasnDup.AsString;
  fDMRecebeXML.mParcDtVencimento.AsDateTime := fDMRecebeXML.cdsParcelasdVenc.AsDateTime;
  fDMRecebeXML.mParcVlrVencimento.AsFloat   := fDMRecebeXML.cdsParcelasvDup.AsFloat;
  fDMRecebeXML.mParcID_Conta.Clear;
  fDMRecebeXML.mParcID_TipoCobranca.Clear;
  fDMRecebeXML.mParc.Post;
end;

end.
