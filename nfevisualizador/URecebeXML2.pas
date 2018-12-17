unit uRecebeXML2;

interface

uses
  inifiles, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, xmldom, Grids, DBGrids,
  DB, Xmlxform, ExtCtrls, StdCtrls, ComCtrls, Mask, DBCtrls, RXDBCtrl, SMDBGrid, Buttons, DBTables, ToolEdit, RxLookup,
  UDMRecebeXML, DBXpress, UCBase, URecebeXML_ConsItens, USel_Produto, URecebeXML_AlteraItem, URecebeXML_ConsOC, ShellApi,
  StrUtils, StdConvs, DateUtils, NxCollection;

type
  TfrmRecebeXML2 = class(TForm)
    OpenDialog1: TOpenDialog;
    pcDados: TPageControl;
    tsDuplicatasDeducoes: TTabSheet;
    dgDuplicatas: TDBGrid;
    tsNFeRefProtocolo: TTabSheet;
    dgNFeRef: TDBGrid;
    dgNFeProtocolo: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label16: TLabel;
    DBEdit12: TDBEdit;
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
    Label44: TLabel;
    Label41: TLabel;
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
    Label64: TLabel;
    DBEdit34: TDBEdit;
    SMDBGrid1: TSMDBGrid;
    Panel7: TPanel;
    Shape1: TShape;
    Label67: TLabel;
    Shape2: TShape;
    Label48: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label61: TLabel;
    Label79: TLabel;
    DBEdit45: TDBEdit;
    Shape3: TShape;
    Label68: TLabel;
    BitBtn4: TBitBtn;
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
    Label91: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
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
    ckAtualizaPreco: TCheckBox;
    ckAtualizaRef: TCheckBox;
    TabSheet5: TTabSheet;
    SMDBGrid2: TSMDBGrid;
    btnAtualizar: TNxButton;
    GroupBox5: TGroupBox;
    Memo1: TMemo;
    Label62: TLabel;
    edtDiretorio: TDirectoryEdit;
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
    procedure btnAtualizarClick(Sender: TObject);
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
    vArquivo_XML: String;
    vFilial_Local : Integer;

    ffrmRecebeXML_ConsItens: TfrmRecebeXML_ConsItens;
    ffrmSel_Produto: TfrmSel_Produto;
    ffrmRecebeXML_AlteraItem: TfrmRecebeXML_AlteraItem;
    ffrmRecebeXML_ConsOC: TfrmRecebeXML_ConsOC;

    procedure prc_Le_cdsDetalhe;
    procedure Grava_mItensNota;

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

    procedure Atualiza_Preco;

    procedure prc_Abrir_qFilial(CNPJ_CPF: String);

    function fnc_NumValido(Const S: String): Integer;

    procedure Gravar_NotaFiscal_Ref;

    procedure prc_Copiar_Arquivo;
    procedure MoverArquivo(Origem, Destino,Arquivo: String);

    procedure prc_Atualiza_Ref;
    procedure prc_Limpar_Auxiliar;
    procedure ListarArquivos(Diretorio: string; Sub:Boolean);
    function TemAtributo(Attr, Val: Integer): Boolean;
    procedure prc_Le_cdsCabecalho(NomeArq: String);

  public
    { Public declarations }
    vUsaConfigNatOper2: String;
    vCodFornecedor: Integer;

    fDMRecebeXML: TDMRecebeXML;

    function fnc_Monta_CNPJ(CNPJ: String; Qtd: Integer): String;

  end;

var
  frmRecebeXML2: TfrmRecebeXML2;

implementation

uses
  DmdDatabase, uUtilPadrao, UMenu, rsDBUtils, uNFeComandos;

{$R *.dfm}

procedure TfrmRecebeXML2.Move_Campos(Campo1,Campo2, Soma: String);
var
  i: Integer;
begin
  for i:=0 to (fDMRecebeXML.cdsDetalhe.FieldCount-1) do
  begin
    if fDMRecebeXML.cdsDetalhe.Fields[i].FieldName = Campo1 then
      fDMRecebeXML.mItensNota.FieldByName(Campo2).AsString := fDMRecebeXML.cdsDetalhe.FieldByName(Campo1).AsString;
  end;
end;

procedure TfrmRecebeXML2.Busca_MaterialFornecedor;
var
  vCNPJAux: String;
  vExisteAux: Boolean;
begin
  if vCodFornecedor < 1 then
    Exit;

  vExisteAux := fDMRecebeXML.fnc_Abrir_Produto_Forn(vCodFornecedor,fDMRecebeXML.mItensNotaCodProduto.AsString,fDMRecebeXML.mItensNotaCodBarra.AsString);
  if vExisteAux then
  begin
    fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger := fDMRecebeXML.cdsProduto_FornID.AsInteger;
    fDMRecebeXML.prc_Abrir_Produto(fDMRecebeXML.cdsProduto_FornID.AsInteger);
    if not fDMRecebeXML.cdsProduto.IsEmpty then
    begin
      fDMRecebeXML.mItensNotaTipoVenda.AsString          := fDMRecebeXML.cdsProdutoTIPO_VENDA.AsString;
      fDMRecebeXML.mItensNotaReferencia_Int.AsString     := fDMRecebeXML.cdsProdutoREFERENCIA.AsString;
      fDMRecebeXML.mItensNotaUnidadeInterno.AsString := fDMRecebeXML.cdsProdutoUNIDADE.AsString;
      if fDMRecebeXML.qParametrosUSA_DESCRICAODANOTA.AsString <> 'S' then
        fDMRecebeXML.mItensNotaNomeProduto.AsString := fDMRecebeXML.cdsProdutoNOME.AsString;
    end;
  end;
end;

procedure TfrmRecebeXML2.FormShow(Sender: TObject);
begin
  fDMRecebeXML := TDMRecebeXML.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDMRecebeXML);
  pcDados.ActivePageIndex := 0;

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
  ckAtualizaPreco.Checked := (fDMRecebeXML.qParametrosATUALIZAR_PRECO.AsString = 'S');
end;

procedure TfrmRecebeXML2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Tag := 0;
  vImportar_NotaSaida := False;
  FreeAndNil(fDMRecebeXML);
  Action := Cafree;
end;

function TfrmRecebeXML2.fnc_Monta_CNPJ(CNPJ: String; Qtd: Integer): String;
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

procedure TfrmRecebeXML2.prc_Le_cdsDetalhe;
begin
  //fDMRecebeXML.mItensNota.EmptyDataSet;
  fDMRecebeXML.cdsDetalhe.First;
  while not fDMRecebeXML.cdsDetalhe.Eof do
  begin
    Grava_mItensNota;
    fDMRecebeXML.cdsDetalhe.Next;
  end;
end;

procedure TfrmRecebeXML2.Grava_mItensNota;
var
  i: Integer;
  vContadorIcms: Integer;
  vTexto: String;
  vPosIni: Integer;
  vPosStr: String;
  vQtdAux: Real;
begin
  fDMRecebeXML.mItensNota.Insert;
  fDMRecebeXML.mItensNotaItem.AsInteger              := fDMRecebeXML.cdsDetalhenItem.AsInteger;
  fDMRecebeXML.mItensNotaCodProduto.AsString         := fDMRecebeXML.cdsDetalhecProd.AsString;
  fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger := 0;
  fDMRecebeXML.mItensNotaReferencia_Int.AsString     := '';
  fDMRecebeXML.mItensNotaCodCor.AsInteger            := 0;
  fDMRecebeXML.mItensNotaCodGrade.AsInteger          := 0;
  fDMRecebeXML.mItensNotaPosicao.AsInteger           := 0;
  fDMRecebeXML.mItensNotaTamanho.AsString            := '';
  fDMRecebeXML.mItensNotaNomeCor.AsString            := '';
  fDMRecebeXML.mItensNotaCodFornecedor.AsInteger     := 0;
  fDMRecebeXML.mItensNotaQtd.AsFloat                 := fDMRecebeXML.cdsDetalheqCom.AsFloat;
  fDMRecebeXML.mItensNotaVlrUnitario.AsFloat         := fDMRecebeXML.cdsDetalhevUnCom.AsFloat;
  fDMRecebeXML.mItensNotaVlrTotal.AsFloat            := fDMRecebeXML.cdsDetalhevProd.AsFloat;
  fDMRecebeXML.mItensNotaCodBarra.AsString           := fDMRecebeXML.cdsDetalhecEAN.AsString;
  fDMRecebeXML.mItensNotaNomeProduto.AsString        := fDMRecebeXML.cdsDetalhexProd.AsString;
  fDMRecebeXML.mItensNotaNomeProduto_Nota.AsString   := fDMRecebeXML.cdsDetalhexProd.AsString;
  fDMRecebeXML.mItensNotaNCM.AsString                := fDMRecebeXML.cdsDetalheNCM.AsString;
  fDMRecebeXML.mItensNotaID_NCM.AsInteger            := fDMRecebeXML.fnc_Abrir_NCM(fDMRecebeXML.cdsDetalheNCM.AsString);
  fDMRecebeXML.mItensNotaCFOP.AsString               := fDMRecebeXML.cdsDetalheCFOP.AsString;
  fDMRecebeXML.mItensNotaCFOPOriginal.AsString       := fDMRecebeXML.cdsDetalheCFOP.AsString;

  Busca_MaterialFornecedor;

  fDMRecebeXML.mItensNotaCFOPInterno.AsInteger       := fnc_Busca_CFOP;
  if fDMRecebeXML.mItensNotaCFOPInterno.AsInteger > 0 then
    fDMRecebeXML.mItensNotaCFOP.AsString := fDMRecebeXML.qCFOPCODCFOP.AsString
  else
    fDMRecebeXML.mItensNotaCFOP.AsString := '';
  fDMRecebeXML.mItensNotaUnidade.AsString            := fDMRecebeXML.cdsDetalheuCom.AsString;

  fDMRecebeXML.mItensNotaNumPedido.AsString          := fDMRecebeXML.cdsDetalhexPed.AsString;
  fDMRecebeXML.mItensNotaItemPedido.AsInteger        := fDMRecebeXML.cdsDetalhenItemPed.AsInteger;
  fDMRecebeXML.mItensNotaInfAdicionais.AsString      := fDMRecebeXML.cdsDetalheinfAdProd.AsString;

  vTexto  := Copy(fDMRecebeXML.cdsDetalheinfAdProd.AsString,1,250);
  fDMRecebeXML.mItensNotaNumLote.AsString := '';

  vCSTInterno := 0;
  vTipoIcms   := '';
  case fDMRecebeXML.cdsCabecalhoCRT.AsInteger of
    3: vContadorIcms := 9;
    1,2: vContadorIcms := 6;
  end;
  i := 0;
  while (vTipoIcms = '') or (i < vContadorIcms) do
  begin
    inc(i);
    if Trim(fDMRecebeXML.cdsDetalhe.FieldByName(vDescICMS[i]+'Orig').AsString) <> '' then
      vTipoIcms := vDescICMS[i];
  end;

  if fDMRecebeXML.cdsCabecalhoCRT.AsInteger = 3 then
  begin
    if vTipoIcms <> '' then
    begin
      if  fDMRecebeXML.cdsCabecalhoenderEmit_cPais.AsString = '1058' then
        fDMRecebeXML.mItensNotaOrigem.AsString  := '0'
      else
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
    end;
  end
  else
  begin
    //900 não foi tratado os campos que estão desabilitados
    //PCIMS e VICMS
    if vTipoIcms <> '' then
    begin
      if  fDMRecebeXML.cdsCabecalhoenderEmit_cPais.AsString = '1058' then
        fDMRecebeXML.mItensNotaOrigem.AsString  := '0'
      else
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
    fDMRecebeXML.mItensNotaCodCSTIPI.AsString       := fDMRecebeXML.cdsDetalheIPITrib_CST.AsString;

  fDMRecebeXML.mItensNotaAliqIPI.AsFloat          := fDMRecebeXML.cdsDetalhepIPI.AsFloat;
  fDMRecebeXML.mItensNotaVlrIPI.AsFloat           := fDMRecebeXML.cdsDetalhevIPI.AsFloat;
  fDMRecebeXML.mItensNotaVlrDesconto.AsFloat      := fDMRecebeXML.cdsDetalhevDesc.AsFloat;
  fDMRecebeXML.mItensNotaVlrFrete.AsFloat         := fDMRecebeXML.cdsDetalhevFrete.AsFloat;
  fDMRecebeXML.mItensNotaGravarNovo.AsBoolean     := False;
  fDMRecebeXML.mItensNotaQtdPacote.AsFloat        := 0;
  fDMRecebeXML.mItensNotaConversorUnidade.AsFloat := 0;

  if (fDMRecebeXML.mItensNotaUnidade.AsString <> fDMRecebeXML.mItensNotaUnidadeInterno.AsString)
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
  end;

  if vUsaConfigNatOper2 = 'S' then
    Ajustar_ICMS;

  fDMRecebeXML.mItensNota.Post;
end;

procedure TfrmRecebeXML2.Busca_SitTrib(Codigo: String);
begin
  if Codigo = '0' then
    Codigo := '00';

  if fDMRecebeXML.cdsTab_CSTICMS.Locate('COD_CST',Codigo, ([LocaseInsensitive])) then
    vCSTInterno := fDMRecebeXML.cdsTab_CSTICMSID.AsInteger;
end;

function TfrmRecebeXML2.fnc_Busca_CFOP: Integer;
var
  vCodNatOper: String;
  vTipo: String;
  vFlag: Integer;
begin
  Result := 0;
  vCodNatOper := fDMRecebeXML.cdsDetalheCFOP.AsString;

  vTipo := trim(fDMRecebeXML.mItensNotaTipoVenda.AsString);
  if trim(vTipo) = '' then
    vTipo := 'G';
  vFlag := 0;
  while vFlag = 0 do
  begin
    if fDMRecebeXML.qDePara.Locate('COD_CFOP_ENT;TIPO_PRODUTO',VarArrayOf([vCodNatOper,vTipo]),[locaseinsensitive]) then
    begin
      vCodNatOper := fDMRecebeXML.qDeParaCOD_CFOP_GRA.AsString;
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

procedure TfrmRecebeXML2.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not fDMRecebeXML.mItensNota.IsEmpty then
  begin
    if fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger < 1 then
      Background := clRed
    else
    if (fDMRecebeXML.mItensNotaCFOPInterno.AsString = '0') or (fDMRecebeXML.mItensNotaCFOPInterno.AsString = '') then
      Background := clGray
    else
    if (fDMRecebeXML.mItensNotaUnidade.AsString <> fDMRecebeXML.mItensNotaUnidadeInterno.AsString)
       and (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) <= 0)
       and (fDMRecebeXML.qParametrosUSA_QTDPACOTE_NTE.AsString = 'S') then
      Background := clAqua
    else
    if (Trim(fDMRecebeXML.mItensNotaNumPedido.AsString) = '') or (Trim(fDMRecebeXML.mItensNotaNumPedido.AsString) = '0')
       or (fDMRecebeXML.mItensNotaItemPedido.AsInteger <= 0)  then
      Background := clYellow;
  end;
end;

procedure TfrmRecebeXML2.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_F3 then
  begin
    vCodProduto_Pos := 0;
    ffrmSel_Produto := TfrmSel_Produto.Create(Self);
    ffrmSel_Produto.vTipo_Prod := '';
    ffrmSel_Produto.ShowModal;
    if vCodProduto_Pos > 0 then
    begin
      fDMRecebeXML.mItensNota.Edit;
      fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger := vCodProduto_Pos;
      fDMRecebeXML.mItensNotaReferencia_Int.AsString     := vReferencia_Pos;
      fDMRecebeXML.mItensNota.Post;
    end;
    FreeAndNil(ffrmSel_Produto);
  end
  else
  if (Key = Vk_F4) and not(fDMRecebeXML.mItensNota.IsEmpty) then
  begin
    //fDMRecebeXML.vNum_Pedido  := 0;
    fDMRecebeXML.vNum_Pedido  := '';
    fDMRecebeXML.vID_Pedido   := 0;
    fDMRecebeXML.vItem_Pedido := 0;
    ffrmRecebeXML_ConsOC := TfrmRecebeXML_ConsOC.Create(Self);
    ffrmRecebeXML_ConsOC.fDMRecebeXML := fDMRecebeXML;
    ffrmRecebeXML_ConsOC.vCodCliente  := vCodFornecedor;
    ffrmRecebeXML_ConsOC.ShowModal;
    FreeAndNil(ffrmRecebeXML_ConsOC);
    //if fDMRecebeXML.vNum_Pedido > 0 then
    if trim(fDMRecebeXML.vNum_Pedido) <> '' then
    begin
      fDMRecebeXML.mItensNota.Edit;
      //fDMRecebeXML.mItensNotaNumPedido.AsInteger         := fDMRecebeXML.vNum_Pedido;
      fDMRecebeXML.mItensNotaNumPedido.AsString          := fDMRecebeXML.vNum_Pedido;
      fDMRecebeXML.mItensNotaID_Pedido.AsInteger         := fDMRecebeXML.vID_Pedido;
      fDMRecebeXML.mItensNotaItemPedido.AsInteger        := fDMRecebeXML.vItem_Pedido;
      fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger := vCodProduto_Pos;
      fDMRecebeXML.mItensNotaReferencia_Int.AsString     := vReferencia_Pos;
      fDMRecebeXML.mItensNotaUnidadeInterno.AsString     := fDMRecebeXML.vUnidade;
      fDMRecebeXML.mItensNota.Post;
    end;
  end
  else
  if (Key = Vk_F5) and not(fDMRecebeXML.mItensNota.IsEmpty) then
  begin
    ffrmRecebeXML_AlteraItem := TfrmRecebeXML_AlteraItem.Create(Self);
    ffrmRecebeXML_AlteraItem.fDMRecebeXML := fDMRecebeXML;
    ffrmRecebeXML_AlteraItem.ShowModal;
    FreeAndNil(ffrmRecebeXML_AlteraItem);
  end;
end;

procedure TfrmRecebeXML2.BitBtn1Click(Sender: TObject);
begin
  ffrmRecebeXML_ConsItens := TfrmRecebeXML_ConsItens.Create(self);
  ffrmRecebeXML_ConsItens.fDMRecebeXML := fDMRecebeXML;
  ffrmRecebeXML_ConsItens.ShowModal;

  FreeAndNil(ffrmRecebeXML_ConsItens);
end;

procedure TfrmRecebeXML2.BitBtn2Click(Sender: TObject);
begin
  if vCodFornecedor > 0 then
    exit;
  if MessageDlg('Deseja gravar o fornecedor no sistema?', mtConfirmation,[mbOk,mbNo],0)=mrNo then
    exit;

  Gravar_Fornecedor;

  ShowMessage('Fornecedor gerado com o código ' + fDMRecebeXML.cdsFornecedorCODIGO.AsString);
end;

procedure TfrmRecebeXML2.Gravar_Cidade;
var
  vAux: Integer;
begin
  vAux := dmDatabase.ProximaSequencia('CIDADE',0);

  fDMRecebeXML.cdsCidade.Insert;
  fDMRecebeXML.cdsCidadeID.AsInteger          := vAux;
  fDMRecebeXML.cdsCidadeNOME.AsString         := fDMRecebeXML.cdsCabecalhoenderEmit_xMun.AsString;
  fDMRecebeXML.cdsCidadeUF.AsString           := fDMRecebeXML.cdsCabecalhoenderEmit_UF.AsString;
  fDMRecebeXML.cdsCidadeCODMUNICIPIO.AsString := fDMRecebeXML.cdsCabecalhoenderEmit_cMun.AsString;
  fDMRecebeXML.cdsCidade.Post;
  fDMRecebeXML.cdsCidade.ApplyUpdates(0);

  vCodCidade := vAux;
end;

procedure TfrmRecebeXML2.Gravar_Pais;
var                           
  vAux: Integer;
begin
  vAux := dmDatabase.ProximaSequencia('PAIS',0);

  fDMRecebeXML.cdsPais.Insert;

  fDMRecebeXML.cdsPaisID.AsInteger     := vAux;
  fDMRecebeXML.cdsPaisNOME.AsString    := fDMRecebeXML.cdsCabecalhoenderEmit_xPais.AsString;
  fDMRecebeXML.cdsPaisCODPAIS.AsString := fDMRecebeXML.cdsCabecalhoenderEmit_cPais.AsString;
  fDMRecebeXML.cdsPais.Post;
  fDMRecebeXML.cdsPais.ApplyUpdates(0);

  vIDPais := vAux;
end;

procedure TfrmRecebeXML2.Gravar_Fornecedor;
var
  vAux: Integer;
begin
  vAux := dmDatabase.ProximaSequencia('PESSOA',0);

  try
    fDMRecebeXML.cdsFornecedor.Insert;
    fDMRecebeXML.cdsFornecedorCODIGO.AsInteger       := vAux;
    fDMRecebeXML.cdsFornecedorNOME.AsString          := UpperCase(fDMRecebeXML.cdsCabecalhoemit_xNome.AsString);
    fDMRecebeXML.cdsFornecedorENDERECO.AsString      := UpperCase(fDMRecebeXML.cdsCabecalhoenderEmit_xLgr.AsString);
    fDMRecebeXML.cdsFornecedorBAIRRO.AsString        := UpperCase(fDMRecebeXML.cdsCabecalhoenderEmit_xBairro.AsString);
    fDMRecebeXML.cdsFornecedorCIDADE.AsString        := fDMRecebeXML.cdsCabecalhoenderEmit_xMun.AsString;
    fDMRecebeXML.cdsFornecedorCEP.AsString           := fDMRecebeXML.cdsCabecalhoenderEmit_CEP.AsString;
    fDMRecebeXML.cdsFornecedorUF.AsString            := fDMRecebeXML.cdsCabecalhoenderEmit_UF.AsString;
    fDMRecebeXML.cdsFornecedorTELEFONE1.AsString     := fDMRecebeXML.cdsCabecalhoenderEmit_fone.AsString;
    fDMRecebeXML.cdsFornecedorCNPJ_CPF.AsString      := fDMRecebeXML.mNotaCNPJ_CPF_Emitente.AsString;
    fDMRecebeXML.cdsFornecedorPESSOA.AsString        := fDMRecebeXML.mNotaPessoa.AsString;
    fDMRecebeXML.cdsFornecedorINSCR_EST.AsString     := fDMRecebeXML.mNotaIE_Emitente.Text;
    fDMRecebeXML.cdsFornecedorDTCADASTRO.AsDateTime  := Date;
    fDMRecebeXML.cdsFornecedorFANTASIA.AsString      := UpperCase(fDMRecebeXML.cdsCabecalhoxFant.AsString);
    fDMRecebeXML.cdsFornecedorTP_FORNECEDOR.AsString := 'S';
    if vImportar_NotaSaida then
      fDMRecebeXML.cdsFornecedorTP_CLIENTE.AsString := 'S';
    if vCodCidade < 1 then
      Gravar_Cidade;
    if vIDPais < 1 then
      Gravar_Pais;
    fDMRecebeXML.cdsFornecedorID_CIDADE.AsInteger      := vCodCidade;
    fDMRecebeXML.cdsFornecedorUSUARIO.AsString         := 'NFeXML';
    fDMRecebeXML.cdsFornecedorHRCADASTRO.AsDateTime    := Now;
    fDMRecebeXML.cdsFornecedorCOMPLEMENTO_END.AsString := fDMRecebeXML.cdsCabecalhoenderEmit_xCpl.AsString;
    fDMRecebeXML.cdsFornecedorNUM_END.AsString         := fDMRecebeXML.cdsCabecalhoenderEmit_nro.AsString;
    fDMRecebeXML.cdsFornecedorID_PAIS.AsInteger        := vIDPais;
    fDMRecebeXML.cdsFornecedor.Post;
    fDMRecebeXML.cdsFornecedor.ApplyUpdates(0);

    vCodFornecedor  := vAux;
    BitBtn2.Visible := False;
    Label61.Visible := False;

  except
    on e: Exception do
    begin
      vCodFornecedor :=  0;
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar o fornecedor: ' + #13 + e.Message);
    end
  end;
end;

procedure TfrmRecebeXML2.Gravar_ClasFiscal;
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
    fDMRecebeXML.mItensNota.Post;
    exit;
  end;

  vAux := dmDatabase.ProximaSequencia('TAB_NCM',0);

  try
    fDMRecebeXML.cdsNCM.Insert;
    fDMRecebeXML.cdsNCMID.AsInteger  := vAux;
    fDMRecebeXML.cdsNCMNCM.AsString  := fDMRecebeXML.mItensNotaNCM.AsString;
    fDMRecebeXML.cdsNCMNOME.AsString := '';
    fDMRecebeXML.cdsNCM.Post;
    fDMRecebeXML.cdsNCM.ApplyUpdates(0);

    fDMRecebeXML.mItensNota.Edit;
    fDMRecebeXML.mItensNotaID_NCM.AsInteger := vAux;
    fDMRecebeXML.mItensNota.Post;
  except
    on e: Exception do
    begin
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar a NCM: ' + #13 + e.Message);
    end
  end;
end;

procedure TfrmRecebeXML2.Gravar_Unidade;
begin
  if trim(fDMRecebeXML.mItensNotaUnidade.AsString) = '' then
    exit;

  try
    fDMRecebeXML.cdsUnidade.Close;
    fDMRecebeXML.sdsUnidade.ParamByName('UNIDADE').AsString := fDMRecebeXML.mItensNotaUnidade.AsString;
    fDMRecebeXML.cdsUnidade.Open;
    if (fDMRecebeXML.cdsUnidade.IsEmpty) or (fDMRecebeXML.cdsUnidadeUNIDADE.AsString = '') then
    begin
     fDMRecebeXML.cdsUnidade.Insert;
     fDMRecebeXML.cdsUnidadeUNIDADE.AsString  := fDMRecebeXML.mItensNotaUnidade.AsString;
     fDMRecebeXML.cdsUnidadeNOME.AsString     := fDMRecebeXML.mItensNotaUnidade.AsString;
     fDMRecebeXML.cdsUnidadeCONVERSOR.AsFloat := 0;
     fDMRecebeXML.cdsUnidade.Post;
     fDMRecebeXML.cdsUnidade.ApplyUpdates(0);
    end;
  except
    on e: Exception do
    begin
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar a unidade: ' + #13 + e.Message);
    end
  end;
end;

procedure TfrmRecebeXML2.Verificar_Produto;
var
  vExiste: Boolean;
begin
  vExiste := False;
  if fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger > 0 then
    fDMRecebeXML.prc_Abrir_Produto(fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger)
  else
  begin
    if not fDMRecebeXML.fnc_Abrir_Produto_Forn(vCodFornecedor,fDMRecebeXML.mItensNotaCodProduto.AsString,fDMRecebeXML.mItensNotaCodBarra.AsString) then
      fDMRecebeXML.prc_Abrir_Produto(-1)
    else
    begin
      vExiste := True;
      fDMRecebeXML.mItensNota.Edit;
      fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger := fDMRecebeXML.cdsProduto_FornID.AsInteger;
      if fDMRecebeXML.cdsProdutoID.AsInteger <> fDMRecebeXML.cdsProduto_FornID.AsInteger then
        fDMRecebeXML.prc_Abrir_Produto(fDMRecebeXML.cdsProduto_FornID.AsInteger);
      fDMRecebeXML.mItensNotaReferencia_Int.AsString := fDMRecebeXML.cdsProdutoREFERENCIA.AsString;

      fDMRecebeXML.mItensNota.Post;
    end;
  end;
  if fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger <= 0 then
    Gravar_Produto
  else
  begin
    if ckAtualizaPreco.Checked then
      Atualiza_Preco;
    if ckAtualizaRef.Checked then
      prc_Atualiza_Ref;
  end;

  if not fDMRecebeXML.fnc_Abrir_Produto_Forn(vCodFornecedor,fDMRecebeXML.mItensNotaCodProduto.AsString,fDMRecebeXML.mItensNotaCodBarra.AsString) then
    Gravar_MaterialFornecedor
  else
  if (ckAtualizaPreco.Checked) and (DateEdit1.Date >= fDMRecebeXML.cdsProdutoDT_ALTPRECO.AsDateTime) then
  begin
    fDMRecebeXML.cdsProduto_Forn.Edit;
    fDMRecebeXML.cdsProduto_FornPRECO_CUSTO.AsFloat := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat));
    fDMRecebeXML.cdsProduto_Forn.Post;
    fDMRecebeXML.cdsProduto_Forn.ApplyUpdates(0);
  end;
end;

procedure TfrmRecebeXML2.Gravar_Produto;
var
  vAux: Integer;
begin
  vAux := dmDatabase.ProximaSequencia('PRODUTO',0);
  vAux := vAux;

  fDMRecebeXML.cdsProduto.Insert;
  fDMRecebeXML.cdsProdutoID.AsInteger             := vAux;
  fDMRecebeXML.cdsProdutoNOME.AsString            := UpperCase(fDMRecebeXML.mItensNotaNomeProduto.AsString);
  fDMRecebeXML.cdsProdutoUNIDADE.AsString         := UpperCase(fDMRecebeXML.mItensNotaUnidade.AsString);
  fDMRecebeXML.cdsProdutoID_NCM.AsInteger         := fDMRecebeXML.mItensNotaID_NCM.AsInteger;
  fDMRecebeXML.cdsProdutoINATIVO.AsString         := 'N';
  fDMRecebeXML.cdsProdutoPERC_IPI.AsFloat         := fDMRecebeXML.mItensNotaAliqIPI.AsFloat;
  case ComboBox1.ItemIndex of
    0: fDMRecebeXML.cdsProdutoTIPO_REG.AsString := 'P';
    1: fDMRecebeXML.cdsProdutoTIPO_REG.AsString := 'M';
    2: fDMRecebeXML.cdsProdutoTIPO_REG.AsString := 'C';
  end;
  if fDMRecebeXML.qParametrosGRAVAR_NA_REF_CODPRODFORN.AsString = 'S' then
    fDMRecebeXML.cdsProdutoREFERENCIA.AsString := fDMRecebeXML.mItensNotaCodProduto.AsString
  else
    fDMRecebeXML.cdsProdutoREFERENCIA.AsString := fDMRecebeXML.cdsProdutoTIPO_REG.AsString + '.' + FormatFloat('000000',vAux);
  fDMRecebeXML.cdsProdutoPRECO_CUSTO.AsFloat      := fDMRecebeXML.mItensNotaVlrUnitario.AsFloat;
  fDMRecebeXML.cdsProdutoPOSSE_MATERIAL.AsString  := 'E';
  fDMRecebeXML.cdsProdutoESTOQUE.AsString         := 'S';
  fDMRecebeXML.cdsProdutoMATERIAL_OUTROS.AsString := 'M';
  fDMRecebeXML.cdsProdutoUSUARIO.AsString         := 'NFeXML';
  fDMRecebeXML.cdsProdutoDTCAD.AsDateTime         := Date;
  fDMRecebeXML.cdsProdutoHRCAD.AsDateTime         := Now;
  fDMRecebeXML.cdsProdutoORIGEM_PROD.AsString     := fDMRecebeXML.mItensNotaOrigem.AsString;
  fDMRecebeXML.cdsProdutoID_FORNECEDOR.AsInteger  := vCodFornecedor;
  fDMRecebeXML.cdsProdutoCOD_BARRA.AsString       := fDMRecebeXML.mItensNotaCodBarra.AsString;
  fDMRecebeXML.cdsProduto.Post;
  fDMRecebeXML.cdsProduto.ApplyUpdates(0);

  fDMRecebeXML.mItensNota.Edit;
  fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger := vAux;
  fDMRecebeXML.mItensNotaUnidadeInterno.AsString     := fDMRecebeXML.cdsProdutoUNIDADE.AsString;
  fDMRecebeXML.mItensNotaReferencia_Int.AsString     := fDMRecebeXML.cdsProdutoREFERENCIA.AsString;
  fDMRecebeXML.mItensNota.Post;
end;

procedure TfrmRecebeXML2.Gravar_MaterialFornecedor;
var
  vItemAux: Integer;
begin
  fDMRecebeXML.cdsProduto_Forn.Last;
  vItemAux := fDMRecebeXML.cdsProduto_FornITEM.AsInteger;
  vItemAux := vItemAux + 1;

  fDMRecebeXML.cdsProduto_Forn.Insert;
  fDMRecebeXML.cdsProduto_FornID.AsInteger                := fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger;
  fDMRecebeXML.cdsProduto_FornID_FORNECEDOR.AsInteger     := vCodFornecedor;
  fDMRecebeXML.cdsProduto_FornITEM.AsInteger              := vItemAux;
  fDMRecebeXML.cdsProduto_FornNOME_MATERIAL_FORN.AsString := fDMRecebeXML.mItensNotaNomeProduto.AsString;
  fDMRecebeXML.cdsProduto_FornCOD_MATERIAL_FORN.AsString  := fDMRecebeXML.mItensNotaCodProduto.AsString;
  fDMRecebeXML.cdsProduto_FornCOD_BARRA.AsString          := fDMRecebeXML.mItensNotaCodBarra.AsString;
  fDMRecebeXML.cdsProduto_FornPRECO_CUSTO.AsFloat         := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat));
  fDMRecebeXML.cdsProduto_Forn.Post;
  fDMRecebeXML.cdsProduto_Forn.ApplyUpdates(0);
end;

procedure TfrmRecebeXML2.Gravar_NotaEntrada;
var
  vNumSeq: Integer;
  vExisteAux: Boolean;
begin
  vID_Nota := 0;
  vGravar := False;

  vExisteAux := fDMRecebeXML.fnc_Abrir_Nota(vFilial_Local,fDMRecebeXML.cdsCabecalhonNF.AsInteger,vCodFornecedor,fDMRecebeXML.cdsCabecalhoserie.AsString);
  if vExisteAux then
    exit;

  vGravar := True;

  vNumSeq := dmDatabase.ProximaSequencia('NOTAFISCAL',0);

  try
    fDMRecebeXML.cdsNotaFiscal.Insert;
    fDMRecebeXML.cdsNotaFiscalID.AsInteger        := vNumSeq;
    fDMRecebeXML.cdsNotaFiscalFILIAL.AsInteger    := vFilial_Local;
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
    fDMRecebeXML.cdsNotaFiscalID_CLIENTE.AsInteger     := vCodFornecedor;
    if (fDMRecebeXML.cdsParcelas.IsEmpty) or (vImportar_NotaSaida) then
      fDMRecebeXML.cdsNotaFiscalTIPO_PRAZO.AsString := 'N'
    else
      fDMRecebeXML.cdsNotaFiscalTIPO_PRAZO.AsString := 'P';
    if vImportar_NotaSaida then
      fDMRecebeXML.cdsNotaFiscalDTEMISSAO.AsDateTime := DateEdit1.Date
    else
    begin
      fDMRecebeXML.cdsNotaFiscalDTEMISSAO.AsDateTime      := fDMRecebeXML.cdsCabecalhoide_dEmi.AsDateTime;
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
    fDMRecebeXML.cdsNotaFiscalVLR_SEGURO.AsFloat      := fDMRecebeXML.cdsCabecalhovSeg.AsFloat;
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

    fDMRecebeXML.cdsNotaFiscal.Post;

    vID_Nota := fDMRecebeXML.cdsNotaFiscalID.AsInteger;
  except
    on e: Exception do
    begin
      vID_Nota := 0;
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar a nota: ' + #13 + e.Message);
    end
  end;
end;

procedure TfrmRecebeXML2.Gravar_NotaEntradaItens;
begin
  vItem := vItem + 1;

  try
    fDMRecebeXML.cdsNotaFiscal_Itens.Insert;
    fDMRecebeXML.cdsNotaFiscal_ItensID.AsInteger                  := fDMRecebeXML.cdsNotaFiscalID.AsInteger;
    fDMRecebeXML.cdsNotaFiscal_ItensITEM.AsInteger                := vItem;
    fDMRecebeXML.cdsNotaFiscal_ItensID_PRODUTO.AsInteger          := fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger;
    fDMRecebeXML.cdsNotaFiscal_ItensID_NCM.AsInteger              := fDMRecebeXML.mItensNotaID_NCM.AsInteger;
    fDMRecebeXML.cdsNotaFiscal_ItensQTD.AsFloat                   := fDMRecebeXML.mItensNotaQtd.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat           := fDMRecebeXML.mItensNotaQtd.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat          := fDMRecebeXML.mItensNotaVlrUnitario.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat             := fDMRecebeXML.mItensNotaVlrTotal.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_ICMS.AsFloat             := fDMRecebeXML.mItensNotaAliqIcms.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_IPI.AsFloat              := fDMRecebeXML.mItensNotaAliqIPI.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensPERC_DESCONTO.AsFloat         := 0;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat          := fDMRecebeXML.mItensNotaVlrDesconto.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_IPI.AsFloat               := fDMRecebeXML.mItensNotaVlrIPI.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMS.AsFloat              := fDMRecebeXML.mItensNotaVlrIcms.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensBASE_ICMS.AsFloat             := fDMRecebeXML.mItensNotaBaseIcms.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensID_CSTICMS.AsInteger          := fDMRecebeXML.mItensNotaCodSitTribInterno.AsInteger;
    if fDMRecebeXML.mItensNotaCodSitTribInterno.AsInteger <= 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensID_CSTICMS.Clear;
    fDMRecebeXML.cdsNotaFiscal_ItensCALCULARICMSSOBREIPI.AsString := 'N';
    fDMRecebeXML.cdsNotaFiscal_ItensID_COR.AsInteger              := fDMRecebeXML.mItensNotaCodCor.AsInteger;
    if fDMRecebeXML.mItensNotaCodCor.AsInteger <= 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensID_COR.Clear;
    fDMRecebeXML.cdsNotaFiscal_ItensUNIDADE.AsString              := fDMRecebeXML.mItensNotaUnidade.AsString;
    fDMRecebeXML.cdsNotaFiscal_ItensNUMERO_OC.AsInteger           := fnc_NumValido(Trim(fDMRecebeXML.mItensNotaNumPedido.AsString));
    fDMRecebeXML.cdsNotaFiscal_ItensITEM_PEDIDO.AsInteger         := fnc_NumValido(Trim(fDMRecebeXML.mItensNotaItemPedido.AsString));
    fDMRecebeXML.cdsNotaFiscal_ItensID_PEDIDO.AsInteger           := fDMRecebeXML.mItensNotaID_Pedido.AsInteger;
    fDMRecebeXML.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger       := 0;
    if vImportar_NotaSaida then
      fDMRecebeXML.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString      := 'N'
    else
      fDMRecebeXML.cdsNotaFiscal_ItensGERAR_ESTOQUE.AsString      := 'S';
    fDMRecebeXML.cdsNotaFiscal_ItensREFERENCIA.AsString           := fDMRecebeXML.cdsProdutoREFERENCIA.AsString;
    fDMRecebeXML.cdsNotaFiscal_ItensNOME_PRODUTO.AsString         := fDMRecebeXML.mItensNotaNomeProduto.AsString;
    fDMRecebeXML.cdsNotaFiscal_ItensID_CFOP.AsInteger             := fDMRecebeXML.mItensNotaCFOPInterno.AsInteger;
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
    fDMRecebeXML.cdsNotaFiscal_ItensTAMANHO.AsString      := fDMRecebeXML.mItensNotaTamanho.AsString;
    fDMRecebeXML.cdsNotaFiscal_ItensQTDDEVOLVIDA.AsFloat  := 0;
    fDMRecebeXML.cdsNotaFiscal_ItensQTDRESTANTE.AsFloat   := fDMRecebeXML.mItensNotaQtd.AsFloat;
    fDMRecebeXML.cdsNotaFiscal_ItensVLR_FRETE.AsFloat     := 0;
    fDMRecebeXML.cdsNotaFiscal_ItensORIGEM_PROD.AsString  := fDMRecebeXML.mItensNotaOrigem.AsString;
    fDMRecebeXML.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat    := fDMRecebeXML.mItensNotaQtdPacote.AsFloat;
    if fDMRecebeXML.mItensNotaID_CSTICMS.AsInteger > 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensID_CSTICMS.AsInteger := fDMRecebeXML.mItensNotaID_CSTICMS.AsInteger;
    if fDMRecebeXML.mItensNotaID_CSTIPI.AsInteger > 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensID_CSTIPI.AsInteger  := fDMRecebeXML.mItensNotaID_CSTIPI.AsInteger;
    if fDMRecebeXML.mItensNotaID_Cofins.AsInteger > 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensID_COFINS.AsInteger  := fDMRecebeXML.mItensNotaID_Cofins.AsInteger;
    if fDMRecebeXML.mItensNotaID_Pis.AsInteger > 0 then
      fDMRecebeXML.cdsNotaFiscal_ItensID_PIS.AsInteger     := fDMRecebeXML.mItensNotaID_Pis.AsInteger;
    fDMRecebeXML.cdsNotaFiscal_ItensTipo_Nota.AsString := 'E';
    if fDMRecebeXML.cdsNotaFiscal_ItensGERAR_DUPLICATA.AsString = 'S' then
      fDMRecebeXML.cdsNotaFiscal_ItensVLR_DUPLICATA.AsFloat := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsNotaFiscal_ItensVLR_TOTAL.AsFloat));

    if fDMRecebeXML.qParametrosGRAVAR_INF_ADICIONAIS_NTE.AsString = 'S' then
      fDMRecebeXML.cdsNotaFiscal_ItensOBS_COMPLEMENTAR.AsString := fDMRecebeXML.mItensNotaInfAdicionais.AsString;

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
    fDMRecebeXML.cdsNotaFiscalBASE_ICMS.AsFloat := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsNotaFiscalBASE_ICMS.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensBASE_ICMS.AsFloat));
    fDMRecebeXML.cdsNotaFiscalVLR_ICMS.AsFloat  := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsNotaFiscalVLR_ICMS.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensVLR_ICMS.AsFloat));
    fDMRecebeXML.cdsNotaFiscalVLR_IPI.AsFloat   := StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsNotaFiscalVLR_IPI.AsFloat + fDMRecebeXML.cdsNotaFiscal_ItensVLR_IPI.AsFloat));
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

procedure TfrmRecebeXML2.Gravar_Estoque;
var
  vItemAux: Integer;
  vAux: Integer;
  vVlrUnitAux: Real;
  vQtdAux: Real;
  vVlrFreteInd: Real;
  vDescAux, vDescOrigAux: Real;
begin
  vVlrUnitAux := fDMRecebeXML.mItensNotaVlrUnitario.AsFloat;
  vQtdAux     := fDMRecebeXML.mItensNotaQtd.AsFloat;
  if StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) > 0 then
  begin
    vQtdAux   := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat));
    if (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat)) > 0) and
       (StrToFloat(FormatFloat('0.00000',vQtdAux)) > 0) and
       (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaQtd.AsFloat)) > 0) then
      vVlrUnitAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat / (vQtdAux / fDMRecebeXML.mItensNotaQtd.AsFloat)));
  end;

  vVlrFreteInd := 0;
  if StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrFrete.AsFloat)) > 0 then
    vVlrFreteInd := StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrFrete.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat));
  if StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaVlrDesconto.AsFloat)) > 0 then
    vDescAux     := StrToFloat(FormatFloat('0.00',fDMRecebeXML.mItensNotaVlrDesconto.AsFloat / vQtdAux));
  if StrToFloat(FormatFloat('0.0000',fDMRecebeXML.mItensNotaVlrDesconto.AsFloat)) > 0 then
    vDescOrigAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrDesconto.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat));

  vAux := dmDatabase.ProximaSequencia('ESTOQUE_MOV',0);

  if not fDMRecebeXML.cdsEstoque_Mov.Active then
    fDMRecebeXML.prc_Abrir_Estoque_Mov(0);

  try
    fDMRecebeXML.cdsEstoque_Mov.Insert;
    fDMRecebeXML.cdsEstoque_MovID.AsInteger            := vAux;
    fDMRecebeXML.cdsEstoque_MovFILIAL.AsInteger        := vFilial_Local;
    fDMRecebeXML.cdsEstoque_MovID_PRODUTO.AsInteger    := fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger;
    fDMRecebeXML.cdsEstoque_MovID_COR.AsInteger        := fDMRecebeXML.mItensNotaCodCor.AsInteger;
    fDMRecebeXML.cdsEstoque_MovTAMANHO.AsString        := fDMRecebeXML.mItensNotaTamanho.AsString;
    fDMRecebeXML.cdsEstoque_MovDTMOVIMENTO.AsDateTime  := fDMRecebeXML.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime;;
    fDMRecebeXML.cdsEstoque_MovTIPO_ES.AsString        := 'E';
    if vImportar_NotaSaida then
      fDMRecebeXML.cdsEstoque_MovTIPO_MOV.AsString       := 'NTS'
    else
      fDMRecebeXML.cdsEstoque_MovTIPO_MOV.AsString       := 'NTE';
    fDMRecebeXML.cdsEstoque_MovNUMNOTA.AsInteger       := fDMRecebeXML.cdsNotaFiscalNUMNOTA.AsInteger;
    fDMRecebeXML.cdsEstoque_MovID_PESSOA.AsInteger     := fDMRecebeXML.cdsNotaFiscalID_CLIENTE.AsInteger;
    //Foi alterado dia 04/05/2013 - Para converter a quantidade
    //fDMRecebeXML.cdsEstoque_MovVLR_UNITARIO.AsFloat    := fDMRecebeXML.mItensNotaVlrUnitario.AsFloat;
    //fDMRecebeXML.cdsEstoque_MovQTD.AsFloat             := fDMRecebeXML.mItensNotaQtd.AsFloat;
    //fDMRecebeXML.cdsEstoque_MovQTD2.AsFloat            := fDMRecebeXML.mItensNotaQtd.AsFloat;
    fDMRecebeXML.cdsEstoque_MovVLR_UNITARIO.AsFloat    := StrToFloat(FormatFloat('0.00000',vVlrUnitAux));
    fDMRecebeXML.cdsEstoque_MovQTD.AsFloat             := StrToFloat(FormatFloat('0.000000',vQtdAux));
    fDMRecebeXML.cdsEstoque_MovQTD2.AsFloat            := StrToFloat(FormatFloat('0.000000',vQtdAux));
    //fDMRecebeXML.cdsEstoque_MovUNIDADE.AsString        := fDMRecebeXML.mItensNotaUnidade.AsString;
    if trim(fDMRecebeXML.mItensNotaUnidadeInterno.AsString) <> '' then
      fDMRecebeXML.cdsEstoque_MovUNIDADE.AsString      := fDMRecebeXML.mItensNotaUnidadeInterno.AsString
    else
      fDMRecebeXML.cdsEstoque_MovUNIDADE.AsString      := fDMRecebeXML.mItensNotaUnidade.AsString;
    fDMRecebeXML.cdsEstoque_MovPERC_ICMS.AsFloat       := fDMRecebeXML.mItensNotaAliqIcms.AsFloat;
    fDMRecebeXML.cdsEstoque_MovPERC_IPI.AsFloat        := fDMRecebeXML.mItensNotaAliqIPI.AsFloat;
    fDMRecebeXML.cdsEstoque_MovVLR_DESCONTO.AsFloat    := StrToFloat(FormatFloat('0.000',vDescAux));
    fDMRecebeXML.cdsEstoque_MovPERC_TRIBUTACAO.AsFloat := fDMRecebeXML.mItensNotaPercRedIcms.AsFloat;
    fDMRecebeXML.cdsEstoque_MovVLR_FRETE.AsFloat       := StrToFloat(FormatFloat('0.00',vVlrFreteInd));
    fDMRecebeXML.cdsEstoque_MovID_CFOP.AsInteger       := fDMRecebeXML.mItensNotaCFOPInterno.AsInteger;
    fDMRecebeXML.cdsEstoque_MovSERIE.AsString          := fDMRecebeXML.cdsNotaFiscalSERIE.AsString;
    fDMRecebeXML.cdsEstoque_MovID_NOTA.AsInteger       := fDMRecebeXML.cdsNotaFiscalID.AsInteger;

    fDMRecebeXML.cdsEstoque_MovQTD_ORIG.AsFloat         := StrToFloat(FormatFloat('0.000000',fDMRecebeXML.mItensNotaQtd.AsFloat));
    fDMRecebeXML.cdsEstoque_MovVLR_UNITARIOORIG.AsFloat := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat));
    fDMRecebeXML.cdsEstoque_MovUNIDADE_ORIG.AsString    := fDMRecebeXML.mItensNotaUnidade.AsString;
    fDMRecebeXML.cdsEstoque_MovVLR_DESCONTOORIG.AsFloat := fDMRecebeXML.mItensNotaVlrDesconto.AsFloat;
    //fDMRecebeXML.cdsEstoque_MovVLR_FRETE.AsFloat        := fDMRecebeXML.mItensNotaVlrFrete.AsFloat;

    fDMRecebeXML.cdsEstoque_Mov.Post;
    fDMRecebeXML.cdsEstoque_Mov.ApplyUpdates(0);

    fDMRecebeXML.cdsNotaFiscal_Itens.Edit;
    fDMRecebeXML.cdsNotaFiscal_ItensID_MOVESTOQUE.AsInteger := vAux;
    fDMRecebeXML.cdsNotaFiscal_Itens.Post;
  except
    on e: Exception do
    begin
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar o estoque: ' + #13 + e.Message);
    end
  end;
end;

procedure TfrmRecebeXML2.Gravar_NotaEntradaParc;
var
  vItemAux: Integer;
  vErro: String;
  vVlrParc: Real;
begin
  fDMRecebeXML.cdsNotaFiscal_Parc.Last;
  vItemAux := fDMRecebeXML.cdsNotaFiscal_ParcITEM.AsInteger;
  vItemAux := vItemAux;
  vVlrParc := 0;
  if fDMRecebeXML.cdsNotaFiscal.State in [dsEdit,dsInsert] then
    fDMRecebeXML.cdsNotaFiscal.Post;

  try
    fDMRecebeXML.cdsParcelas.First;
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
    end;

    if fDMRecebeXML.cdsNotaFiscal.State in [dsBrowse] then
      fDMRecebeXML.cdsNotaFiscal.Edit;
    fDMRecebeXML.cdsNotaFiscalVLR_DUPLICATA.AsFloat := StrtoFloat(FormatFloat('0.00',vVlrParc));
    fDMRecebeXML.cdsNotaFiscal.Post;
   // fDMRecebeXML.cdsNotaFiscal.ApplyUpdates(0);

    if not fDMRecebeXML.cdsNotaFiscal_Parc.IsEmpty then
    begin
      fDMRecebeXML.cdsNotaFiscal_Parc.First;
      vItemAux := 0;
      while not fDMRecebeXML.cdsNotaFiscal_Parc.Eof do
      begin
        vItemAux := vItemAux + 1;

        fDMRecebeXML.Gravar_Duplicata('P','N',fDMRecebeXML.cdsNotaFiscal_ParcITEM.AsInteger,fDMRecebeXML.cdsNotaFiscal_ParcVLR_VENCIMENTO.AsFloat,fDMRecebeXML.cdsNotaFiscal_ParcDTVENCIMENTO.AsDateTime);

        fDMRecebeXML.cdsNotaFiscal_Parc.Next;
      end;

    end;
  except
    on e: Exception do
    begin
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar a nota: ' + #13 + e.Message);
    end
  end;
end;

function TfrmRecebeXML2.fnc_NumValido(Const S: String): Integer;
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

procedure TfrmRecebeXML2.Ajustar_ICMS;
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

procedure TfrmRecebeXML2.BitBtn4Click(Sender: TObject);
begin
  if DateEdit1.Date <= 0 then
  begin
    MessageDlg('*** Data de entrada não foi informada', mtError, [mbOk], 0);
    DateEdit1.SetFocus;
    exit;
  end;

  if MessageDlg('Deseja gravar os produtos no programa?', mtConfirmation,[mbOk,mbNo],0)=mrNo then
    Exit;

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

procedure TfrmRecebeXML2.Atualiza_Preco;
var
  vVlrAux: Real;
  vUnidadeAux: String;
begin
  if fDMRecebeXML.qParametrosATUALIZAR_PRECO.AsString <> 'S' then
    exit;

  {if not fDMRecebeXML.cdsProduto.Locate('ID',fDMRecebeXML.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,([LocaseInsensitive])) then
    exit;

  vUnidadeAux := fDMRecebeXML.cdsProdutoUNIDADE.AsString;

  vVlrAux := fDMRecebeXML.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat;
  if (vUnidadeAux <> fDMRecebeXML.cdsNotaFiscal_ItensUNIDADE.AsString) and
     (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.cdsNotaFiscal_ItensQTD.AsFloat)) > 0) then
    vVlrAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.cdsNotaFiscal_ItensVLR_UNITARIO.AsFloat / (fDMRecebeXML.cdsNotaFiscal_ItensQTD_PACOTE.AsFloat / fDMRecebeXML.cdsNotaFiscal_ItensQTD.AsFloat)));

  if fDMRecebeXML.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime >= fDMRecebeXML.cdsProdutoDT_ALTPRECO.AsDateTime then
  begin
    fDMRecebeXML.cdsProduto.Edit;
    fDMRecebeXML.cdsProdutoPRECO_CUSTO.AsFloat    := vVlrAux;
    fDMRecebeXML.cdsProdutoDT_ALTPRECO.AsDateTime := fDMRecebeXML.cdsNotaFiscalDTSAIDAENTRADA.AsDateTime;
    fDMRecebeXML.cdsProduto.Post;
    fDMRecebeXML.cdsProduto.ApplyUpdates(0);
  end;}

  if fDMRecebeXML.cdsProdutoID.AsInteger <> fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger then
    if not fDMRecebeXML.cdsProduto.Locate('ID',fDMRecebeXML.mItensNotaCodProdutoInterno.AsInteger,([LocaseInsensitive])) then
      exit;

  vUnidadeAux := fDMRecebeXML.cdsProdutoUNIDADE.AsString;

  vVlrAux := fDMRecebeXML.mItensNotaVlrUnitario.AsFloat;
  if (vUnidadeAux <> fDMRecebeXML.mItensNotaUnidade.AsString) and
     (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaQtdPacote.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaQtd.AsFloat)) > 0) then
    vVlrAux := StrToFloat(FormatFloat('0.00000',fDMRecebeXML.mItensNotaVlrUnitario.AsFloat / (fDMRecebeXML.mItensNotaQtdPacote.AsFloat / fDMRecebeXML.mItensNotaQtd.AsFloat)));

  if DateEdit1.Date >= fDMRecebeXML.cdsProdutoDT_ALTPRECO.AsDateTime then
  begin
    fDMRecebeXML.cdsProduto.Edit;
    fDMRecebeXML.cdsProdutoPRECO_CUSTO.AsFloat    := vVlrAux;
    fDMRecebeXML.cdsProdutoDT_ALTPRECO.AsDateTime := DateEdit1.Date;
    if (StrToFloat(FormatFloat('0.00',fDMRecebeXML.cdsProdutoPERC_MARGEMLUCRO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00000',fDMRecebeXML.cdsProdutoPRECO_CUSTO.AsFloat)) > 0) then
    begin
      vVlrAux := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.cdsProdutoPRECO_CUSTO.AsFloat * fDMRecebeXML.cdsProdutoPERC_MARGEMLUCRO.AsFloat / 100));
      vVlrAux := StrToFloat(FormatFloat('0.0000',fDMRecebeXML.cdsProdutoPRECO_CUSTO.AsFloat + vVlrAux));
      fDMRecebeXML.cdsProdutoPRECO_VENDA.AsFloat := StrToFloat(FormatFloat('0.0000',vVlrAux));
    end;
    fDMRecebeXML.cdsProduto.Post;
    fDMRecebeXML.cdsProduto.ApplyUpdates(0);
  end;

end;

procedure TfrmRecebeXML2.prc_Abrir_qFilial(CNPJ_CPF: String);
begin
  vFilial_Local := 0;
  fDMRecebeXML.qFilial.Close;
  fDMRecebeXML.qFilial.ParamByName('CNPJ_CPF').AsString := CNPJ_CPF;
  fDMRecebeXML.qFilial.Open;
  vFilial_Local := fDMRecebeXML.qFilialID.AsInteger;
  //fDMRecebeXML.qFilial.Close;
end;

procedure TfrmRecebeXML2.btnGravarNFeClick(Sender: TObject);
var
  vErro: String;
  ID: TTransactionDesc;
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
  if fDMRecebeXML.cdsCabecalhoide_dEmi.AsDateTime > DateEdit1.Date then
  begin
    ShowMessage('Data de entrada é menor que a data de emissão!');
    DateEdit1.SetFocus;
    exit;
  end;
  if vFilial_Local < 1 then
  begin
    ShowMessage('Nota não pertence a empresa!');
    exit;
  end;

  vErro := '';
  fDMRecebeXML.mItensNota.First;
  while not fDMRecebeXML.mItensNota.Eof do
  begin
    if (fDMRecebeXML.mItensNotaCFOPInterno.AsString = '0') or (fDMRecebeXML.mItensNotaCFOPInterno.AsString = '') then
    begin
      vErro := 'S';
      fDMRecebeXML.mItensNota.Last;
    end;
    fDMRecebeXML.mItensNota.Next;
  end;
  if vErro = 'S' then
  begin
    ShowMessage('Existem itens sem a natureza de operação (CFOP)!');
    exit;
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
      dmDatabase.scoDados.Rollback(ID);
      exit;
    end;

    if not(vImportar_NotaSaida) then
      Gravar_NotaEntradaParc;

    fDMRecebeXML.mItensNota.First;
    while not fDMRecebeXML.mItensNota.Eof do
    begin
      Gravar_ClasFiscal;

      Gravar_Unidade;

      Verificar_Produto;

      Gravar_NotaEntradaItens;
      if not(vImportar_NotaSaida) then
        Gravar_Estoque;

      fDMRecebeXML.mItensNota.Next;
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

    fDMRecebeXML.cdsCabecalho.Close;

    if not vImportar_NotaSaida then
      prc_Copiar_Arquivo;

  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      vErro      := e.Message;
      Raise Exception.Create('Ocorreu o seguinte erro ao executar: ' + #13 + vErro);
    end
  end;

  if (trim(vErro) = '') and (vImportar_NotaSaida) then
    Close;
end;

procedure TfrmRecebeXML2.btnAbrirXMLClick(Sender: TObject);
begin
  Label4.Visible := False;
  OpenDialog1.InitialDir := fDMRecebeXML.qParametrosENDXML_NOTAENTRADA.AsString;
  if OpenDialog1.Execute then
  begin
    fDMRecebeXML.AbrirNFe(OpenDialog1.FileName);
    vOpenDialog := OpenDialog1.FileName;

    if CheckBox1.Checked then
      vUsaConfigNatOper2 := 'S'
    else
      vUsaConfigNatOper2 := 'N';
  end;
end;

procedure TfrmRecebeXML2.BitBtn3Click(Sender: TObject);
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

     vLocalServidorNFe := fDMRecebeXML.qParametrosLOCALSERVIDORNFE.AsString;
     if trim(fDMRecebeXML.qFilial2LOCALSERVIDORNFE.AsString) <> '' then
       vLocalServidorNFe := fDMRecebeXML.qFilial2LOCALSERVIDORNFE.AsString;

     NFe_GerarDANFE( trim(vLocalServidorNFe),
                     texto,'','',
                     Stream,
                     DANFE );

     Arquivo := ExtractFilePath(Application.ExeName) + '\DANFE.pdf';
     if FileExists(Arquivo) then
       DeleteFile(Arquivo);

     DANFE.Position := 0;
     DANFE.SaveToFile(Arquivo);

     ShellExecute(Application.Handle, 'Open', PChar(arquivo), nil, nil, SW_SHOWMAXIMIZED);
   finally
     FreeAndNil(DANFE);
     FreeAndNil(Stream);
   end;
 end;
end;

procedure TfrmRecebeXML2.Gravar_Cliente;
begin
  fDMRecebeXML.cdsFornecedor.Edit;
  fDMRecebeXML.cdsFornecedorTP_CLIENTE.AsString := 'S';
  fDMRecebeXML.cdsFornecedor.Post;
  fDMRecebeXML.cdsFornecedor.ApplyUpdates(0);
end;

procedure TfrmRecebeXML2.prc_Mover_Itens;
begin
  if fDMRecebeXML.cdsCFOPCODCFOP.AsString <> fDMRecebeXML.mItensNotaCFOP.AsString then
    fDMRecebeXML.cdsCFOP.Locate('CODCFOP',fDMRecebeXML.mItensNotaCFOP.AsString, ([LocaseInsensitive]));
  if fDMRecebeXML.cdsCFOPID_CSTICMS.AsInteger > 0 then
    fDMRecebeXML.mItensNotaID_CSTICMS.AsInteger := fDMRecebeXML.cdsCFOPID_CSTICMS.AsInteger
  else
  if fDMRecebeXML.qFilialID_CSTICMS.AsInteger > 0 then
    fDMRecebeXML.mItensNotaID_CSTICMS.AsInteger := fDMRecebeXML.qFilialID_CSTICMS.AsInteger;
  if fDMRecebeXML.cdsCFOPID_CSTIPI.AsInteger > 0 then
    fDMRecebeXML.mItensNotaID_CSTIPI.AsInteger  := fDMRecebeXML.cdsCFOPID_CSTIPI.AsInteger
  else
  if fDMRecebeXML.qFilialID_CSTIPI.AsInteger > 0 then
    fDMRecebeXML.mItensNotaID_CSTIPI.AsInteger  := fDMRecebeXML.qFilialID_CSTIPI.AsInteger;

  if fDMRecebeXML.cdsCFOPID_COFINS.AsInteger > 0 then
    fDMRecebeXML.mItensNotaID_Cofins.AsInteger  := fDMRecebeXML.cdsCFOPID_COFINS.AsInteger
  else
  if fDMRecebeXML.qFilialID_COFINS.AsInteger > 0 then
    fDMRecebeXML.mItensNotaID_Cofins.AsInteger  := fDMRecebeXML.qFilialID_COFINS.AsInteger;
  if fDMRecebeXML.cdsCFOPID_PIS.AsInteger > 0 then
    fDMRecebeXML.mItensNotaID_Pis.AsInteger     := fDMRecebeXML.cdsCFOPID_PIS.AsInteger
  else
  if fDMRecebeXML.qFilialID_PIS.AsInteger > 0 then
    fDMRecebeXML.mItensNotaID_Pis.AsInteger     := fDMRecebeXML.qFilialID_PIS.AsInteger;

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

procedure TfrmRecebeXML2.Gravar_NotaFiscal_Ref;
begin
  fDMRecebeXML.cdsNotaFiscal_Ref.Insert;
  fDMRecebeXML.cdsNotaFiscal_RefID.AsInteger                := fDMRecebeXML.cdsNotaFiscalID.AsInteger;
  fDMRecebeXML.cdsNotaFiscal_RefITEM.AsInteger              := 1;
  fDMRecebeXML.cdsNotaFiscal_RefTIPO.AsString               := '13';
  fDMRecebeXML.cdsNotaFiscal_RefDESCRICAO_TIPO.AsString     := 'NFe';
  fDMRecebeXML.cdsNotaFiscal_RefNFECHAVEACESSO_REF.AsString := fDMRecebeXML.cdsNFeProtocolochNFe.AsString;
  fDMRecebeXML.cdsNotaFiscal_Ref.Post;

end;

procedure TfrmRecebeXML2.prc_Copiar_Arquivo;
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

procedure TfrmRecebeXML2.MoverArquivo(Origem, Destino,Arquivo: String);
var
  o, d: PAnsiChar;
begin
  o:= PAnsiChar(Origem + Arquivo);
  d:= PAnsiChar(Destino + Arquivo);
  MoveFile(o,d);
end;

procedure TfrmRecebeXML2.prc_Atualiza_Ref;
begin
  fDMRecebeXML.cdsProduto.Edit;
  if fDMRecebeXML.qParametrosGRAVAR_NA_REF_CODPRODFORN.AsString = 'S' then
    fDMRecebeXML.cdsProdutoREFERENCIA.AsString := fDMRecebeXML.mItensNotaCodProduto.AsString
  else
    fDMRecebeXML.cdsProdutoREFERENCIA.AsString := fDMRecebeXML.cdsProdutoTIPO_REG.AsString + '.' + FormatFloat('000000',fDMRecebeXML.cdsProdutoID.AsInteger);
  fDMRecebeXML.cdsProduto.Post;
  fDMRecebeXML.cdsProduto.ApplyUpdates(0);

  //Atualiza_Preco;
end;

procedure TfrmRecebeXML2.btnAtualizarClick(Sender: TObject);
begin
  prc_Limpar_Auxiliar;
  ListarArquivos(edtDiretorio.Text, False);
end;

procedure TfrmRecebeXML2.prc_Limpar_Auxiliar;
begin
  vArquivo_XML := '';
  fDMRecebeXML.mNota.First;
  while not fDMRecebeXML.mNota.Eof do
  begin
    fDMRecebeXML.mItensNota.First;
    while not fDMRecebeXML.mItensNota.Eof do
      fDMRecebeXML.mItensNota.Delete;
    fDMRecebeXML.mNota.Delete;
  end;
end;

procedure TfrmRecebeXML2.ListarArquivos(Diretorio: string; Sub: Boolean);
var
  F: TSearchRec;
  Ret: Integer;
  TempNome: string;
begin
  Ret := FindFirst(Diretorio+'\*.XML', faAnyFile, F);
  try
    while Ret = 0 do
    begin
      if TemAtributo(F.Attr, faDirectory) then
      begin
        if (F.Name <> '.') And (F.Name <> '..') then
          if Sub = True then
          begin
            TempNome := Diretorio+'\' + F.Name;
            ListarArquivos(TempNome, True);
          end;
      end
      else
      begin
        vGravar := True;
        try
          vArquivo_XML := F.Name;
          fDMRecebeXML.AbrirNFe(Diretorio+'\'+F.Name);
        except
          begin
            vGravar := False;
            Memo1.Lines.Add(Diretorio+'\'+F.Name);
          end;
        end;
        if vGravar then
          prc_Le_cdsCabecalho(F.Name);
      end;
        Ret := FindNext(F);
    end;
  finally
    FindClose(F);
  end;
end;

function TfrmRecebeXML2.TemAtributo(Attr, Val: Integer): Boolean;
begin
  Result := Attr and Val = Val;
end;

procedure TfrmRecebeXML2.prc_Le_cdsCabecalho(NomeArq: String);
var
  vCNPJAux: String;
begin
  fDMRecebeXML.cdsCabecalho.First;
  while not fDMRecebeXML.cdsCabecalho.Eof do
  begin
    vCodCidade := 0;

    fDMRecebeXML.cdsNFeProtocolo.First;
    fDMRecebeXML.mNota.Insert;
    if Trim(fDMRecebeXML.cdsCabecalhodest_CNPJ.AsString) <> '' then
      vCNPJAux := fnc_Monta_CNPJ(fDMRecebeXML.cdsCabecalhodest_CNPJ.AsString,14)
    else
      vCNPJAux := fnc_Monta_CNPJ(fDMRecebeXML.cdsCabecalhodest_CPF.AsString,11);
    prc_Abrir_qFilial(vCNPJAux);
    fDMRecebeXML.mNotaFilial.AsInteger      := vFilial_Local;
    fDMRecebeXML.mNotaCodMunicipio.AsString := fDMRecebeXML.cdsCabecalhoenderEmit_cMun.AsString;
    fDMRecebeXML.mNotaUF.AsString           := fDMRecebeXML.cdsCabecalhoenderEmit_UF.AsString;
    if fDMRecebeXML.fnc_Abrir_Cidade(fDMRecebeXML.cdsCabecalhoenderEmit_cMun.AsString) then
    begin
      fDMRecebeXML.mNotaID_Cidade.AsInteger  := fDMRecebeXML.cdsCidadeID.AsInteger;
      fDMRecebeXML.mNotaNome_Cidade.AsString := fDMRecebeXML.cdsCidadeNOME.AsString;
      fDMRecebeXML.mNotaUF.AsString          := fDMRecebeXML.cdsCidadeUF.AsString;
    end;

    fDMRecebeXML.mNotaCodPais.AsString := fDMRecebeXML.cdsCabecalhoenderEmit_cPais.AsString;
    if fDMRecebeXML.fnc_Abrir_Pais(fDMRecebeXML.cdsCabecalhoenderEmit_cPais.AsString) then
      fDMRecebeXML.mNotaID_Pais.AsInteger := fDMRecebeXML.cdsPaisID.AsInteger;

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

    fDMRecebeXML.mNotaVersao.AsString    := fDMRecebeXML.cdsNFeProtocoloversao.AsString;
    fDMRecebeXML.mNotaVerProc.AsString   := fDMRecebeXML.cdsCabecalhoverProc.AsString;
    fDMRecebeXML.mNotaInfNFe_Id.AsString := fDMRecebeXML.cdsCabecalhoinfNFe_Id.AsString;
    fDMRecebeXML.mNotaSerie.AsString     := fDMRecebeXML.cdsCabecalhoserie.AsString;
    fDMRecebeXML.mNotaNumNota.AsInteger  := fDMRecebeXML.cdsCabecalhonNF.AsInteger;

    if Trim(fDMRecebeXML.cdsCabecalhoemit_CNPJ.AsString) <> '' then
      vCNPJAux := fnc_Monta_CNPJ(fDMRecebeXML.cdsCabecalhoemit_CNPJ.AsString,14)
    else
      vCNPJAux := fnc_Monta_CNPJ(fDMRecebeXML.cdsCabecalhoemit_CPF.AsString,11);
    if fDMRecebeXML.fnc_Abrir_Fornecedor(vCNPJAux) then
      fDMRecebeXML.mNotaID_Emitente.AsInteger := fDMRecebeXML.cdsFornecedorCODIGO.AsInteger;
    if trim(fDMRecebeXML.cdsCabecalhoemit_CNPJ.AsString) <> '' then
    begin
      fDMRecebeXML.mNotaCNPJ_CPF_Emitente.AsString := fDMRecebeXML.cdsCabecalhoemit_CNPJ.AsString;
      fDMRecebeXML.mNotaPessoa.AsString            := 'J';
    end
    else
    begin
      fDMRecebeXML.mNotaCNPJ_CPF_Emitente.AsString := fDMRecebeXML.cdsCabecalhoemit_CPF.AsString;
      fDMRecebeXML.mNotaPessoa.AsString            := 'F';
    end;
    fDMRecebeXML.mNotaNome_Emitente.AsString  := fDMRecebeXML.cdsCabecalhoemit_xNome.AsString;
    fDMRecebeXML.mNotaCFOP.AsString           := fDMRecebeXML.cdsCabecalhoCFOP.AsString;
    fDMRecebeXML.mNotaID_CFOP.AsInteger       := 0; //aqui
    fDMRecebeXML.mNotaCFOP_Interno.AsString   := ''; //aqui
    fDMRecebeXML.mNotaVlrTotal.AsFloat        := fDMRecebeXML.cdsCabecalhovNF.AsFloat;
    fDMRecebeXML.mNotaVlrProduto.AsFloat      := fDMRecebeXML.cdsCabecalhovProd.AsFloat;
    fDMRecebeXML.mNotaVlrICMS.AsFloat         := fDMRecebeXML.cdsCabecalhovICMS.AsFloat;
    fDMRecebeXML.mNotaBaseICMS.AsFloat        := fDMRecebeXML.cdsCabecalhoICMSTot_vBC.AsFloat;
    fDMRecebeXML.mNotaVlrIPI.AsFloat          := fDMRecebeXML.cdsCabecalhovIPI.AsFloat;
    fDMRecebeXML.mNotaVlrCofins.AsFloat       := fDMRecebeXML.cdsCabecalhoICMSTot_vCOFINS.AsFloat;
    fDMRecebeXML.mNotaVlrPis.AsFloat          := fDMRecebeXML.cdsCabecalhoICMSTot_vPIS.AsFloat;
    fDMRecebeXML.mNotaVlrICMSSimples.AsFloat  := 0; //aqui
    fDMRecebeXML.mNotaBaseICMSSimples.AsFloat := 0; //aqui
    fDMRecebeXML.mNotaDtEmissao.AsDateTime    := fDMRecebeXML.cdsCabecalhoide_dEmi.AsDateTime;
    fDMRecebeXML.mNotaChaveAcesso.AsString    := fDMRecebeXML.cdsNFeProtocolochNFe.AsString;
    fDMRecebeXML.mNotaProtocolo.AsString      := fDMRecebeXML.cdsNFeProtocolonProt.AsString;
    fDMRecebeXML.mNotaTipoAmbiente.AsString   := fDMRecebeXML.cdsCabecalhotpAmb.AsString; //aqui Tipo <> 1 é homologação
    fDMRecebeXML.mNotaDtSaida.AsDateTime      := fDMRecebeXML.cdsCabecalhodSaiEnt.AsDateTime;
    fDMRecebeXML.mNotaHrSaida.AsString        := fDMRecebeXML.cdsCabecalhohSaiEnt.AsString;
    case fDMRecebeXML.cdsCabecalhoprocEmi.AsInteger of
      0: fDMRecebeXML.mNotaProcesso.AsString := '0 - Com aplicativo do contribuinte';
      1: fDMRecebeXML.mNotaProcesso.AsString := '1 - Avulsa pelo Fisco';
      2: fDMRecebeXML.mNotaProcesso.AsString := '2 - Avulsa pelo contribuinte com seu certificado digital através do site';
      3: fDMRecebeXML.mNotaProcesso.AsString := '3 - Pelo contribuinte com aplicativo fornecido pelo Fisco';
    end;
    case fDMRecebeXML.cdsCabecalhotpEmis.AsInteger of
      1: fDMRecebeXML.mNotaedtFormaEmissao.AsString := '1 - Normal';
      2: fDMRecebeXML.mNotaedtFormaEmissao.AsString := '2 - Contingência FS';
      3: fDMRecebeXML.mNotaedtFormaEmissao.AsString := '3 - Contingência SCAN';
      4: fDMRecebeXML.mNotaedtFormaEmissao.AsString := '4 - Contingência DPEC';
      5: fDMRecebeXML.mNotaedtFormaEmissao.AsString := '5 - Contingência FS-DA';
    end;
    fDMRecebeXML.mNotaModelo.AsString := fDMRecebeXML.cdsCabecalhomod.AsString;
    fDMRecebeXML.mNotaTipoPagamento.AsString := fDMRecebeXML.cdsCabecalhoindPag.AsString;
    case fDMRecebeXML.cdsCabecalhoindPag.AsInteger of
      0: fDMRecebeXML.mNotaTipoPagamento_Des.AsString := '0 - Pagamento à vista';
      1: fDMRecebeXML.mNotaTipoPagamento_Des.AsString := '1 - Pagamento a prazo';
      2: fDMRecebeXML.mNotaTipoPagamento_Des.AsString := '2 - Outros';
    end;
    case fDMRecebeXML.cdsCabecalhofinNFe.AsInteger of
      1: fDMRecebeXML.mNotaFinalidade.AsString := '1 - Normal';
      2: fDMRecebeXML.mNotaFinalidade.AsString := '2 - Complementar';
      3: fDMRecebeXML.mNotaFinalidade.AsString := '3 - Ajuste';
    end;
    case fDMRecebeXML.cdsCabecalhotpNF.AsInteger of
      0: fDMRecebeXML.mNotaTipo_ES.AsString :=  '0 - Entrada';
      1: fDMRecebeXML.mNotaTipo_ES.AsString :=  '1 - Saída';
    end;

    if trim(fDMRecebeXML.cdsCabecalhodest_CNPJ.AsString) <> '' then
      fDMRecebeXML.mNotaCNPJ_CPF_Destinatario.AsString := fDMRecebeXML.cdsCabecalhodest_CNPJ.AsString
    else
      fDMRecebeXML.mNotaCNPJ_CPF_Destinatario.AsString := fDMRecebeXML.cdsCabecalhodest_CPF.AsString;
    fDMRecebeXML.mNotaIE_Emitente.AsString     := fDMRecebeXML.cdsCabecalhoemit_IE.AsString;
    fDMRecebeXML.mNotaIE_Destinatario.AsString := fDMRecebeXML.cdsCabecalhodest_IE.AsString;
    fDMRecebeXML.mNotaArquivo_XML.AsString := NomeArq;
    if Trim(fDMRecebeXML.cdsCabecalhoCNPJ.AsString) <> '' then
      fDMRecebeXML.mNotaCNPJ_CPF_Transportadora.AsString := fnc_Monta_CNPJ(fDMRecebeXML.cdsCabecalhoCNPJ.AsString,14)
    else
      fDMRecebeXML.mNotaCNPJ_CPF_Transportadora.AsString := fnc_Monta_CNPJ(fDMRecebeXML.cdsCabecalhoCPF.AsString,11);
    fDMRecebeXML.mNotaCRT.AsInteger := fDMRecebeXML.cdsCabecalhoCRT.AsInteger;
    fDMRecebeXML.mNota.Post;

    prc_Le_cdsDetalhe;

    fDMRecebeXML.cdsCabecalho.Next;
  end;
end;

end.
