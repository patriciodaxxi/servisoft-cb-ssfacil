unit UDMConsNotaBeneficiamento;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, UDMEstoque, DBXpress;

type
  TDMConsNotaBeneficiamento = class(TDataModule)
    sdsNotaEntrada: TSQLDataSet;
    dspNotaEntrada: TDataSetProvider;
    cdsNotaEntrada: TClientDataSet;
    dsNotaEntrada: TDataSource;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    sdsFilialID: TIntegerField;
    sdsFilialNOME: TStringField;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    sdsFilialNOME_INTERNO: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    sdsProdutoID: TIntegerField;
    sdsProdutoNOME: TStringField;
    sdsProdutoREFERENCIA: TStringField;
    cdsProdutoID: TIntegerField;
    cdsProdutoNOME: TStringField;
    cdsProdutoREFERENCIA: TStringField;
    sdsFornecedor: TSQLDataSet;
    dspFornecedor: TDataSetProvider;
    cdsFornecedor: TClientDataSet;
    dsFornecedor: TDataSource;
    sdsFornecedorCODIGO: TIntegerField;
    sdsFornecedorNOME: TStringField;
    sdsFornecedorCNPJ_CPF: TStringField;
    cdsFornecedorCODIGO: TIntegerField;
    cdsFornecedorNOME: TStringField;
    cdsFornecedorCNPJ_CPF: TStringField;
    sdsNotaEntradaDTEMISSAO: TDateField;
    sdsNotaEntradaID_NTE: TIntegerField;
    sdsNotaEntradaSERIE: TStringField;
    sdsNotaEntradaNUMNOTA: TIntegerField;
    sdsNotaEntradaID_CLIENTE: TIntegerField;
    sdsNotaEntradaNOMECLIENTE: TStringField;
    sdsNotaEntradaCNPJ_CPF: TStringField;
    sdsNotaEntradaITEM_NTE: TIntegerField;
    sdsNotaEntradaID_PRODUTO: TIntegerField;
    sdsNotaEntradaNOMEPRODUTO: TStringField;
    sdsNotaEntradaREFERENCIA: TStringField;
    sdsNotaEntradaQTD: TFloatField;
    sdsNotaEntradaQTDRESTANTE: TFloatField;
    sdsNotaEntradaQTDDEVOLVIDA: TFloatField;
    sdsNotaEntradaNOMEFILIAL: TStringField;
    sdsNotaEntradaCODCFOP: TStringField;
    sdsNotaEntradaBENEFICIAMENTO: TStringField;
    sdsNotaEntradaVLR_UNITARIO: TFloatField;
    sdsNotaEntradaUNIDADE: TStringField;
    cdsNotaEntradaDTEMISSAO: TDateField;
    cdsNotaEntradaID_NTE: TIntegerField;
    cdsNotaEntradaSERIE: TStringField;
    cdsNotaEntradaNUMNOTA: TIntegerField;
    cdsNotaEntradaID_CLIENTE: TIntegerField;
    cdsNotaEntradaNOMECLIENTE: TStringField;
    cdsNotaEntradaCNPJ_CPF: TStringField;
    cdsNotaEntradaITEM_NTE: TIntegerField;
    cdsNotaEntradaID_PRODUTO: TIntegerField;
    cdsNotaEntradaNOMEPRODUTO: TStringField;
    cdsNotaEntradaREFERENCIA: TStringField;
    cdsNotaEntradaQTD: TFloatField;
    cdsNotaEntradaQTDRESTANTE: TFloatField;
    cdsNotaEntradaQTDDEVOLVIDA: TFloatField;
    cdsNotaEntradaNOMEFILIAL: TStringField;
    cdsNotaEntradaCODCFOP: TStringField;
    cdsNotaEntradaBENEFICIAMENTO: TStringField;
    cdsNotaEntradaVLR_UNITARIO: TFloatField;
    cdsNotaEntradaUNIDADE: TStringField;
    sdsNotaDevolvida: TSQLDataSet;
    dspNotaDevolvida: TDataSetProvider;
    cdsNotaDevolvida: TClientDataSet;
    dsNotaDevolvida: TDataSource;
    sdsNotaDevolvidaID: TIntegerField;
    sdsNotaDevolvidaITEM: TIntegerField;
    sdsNotaDevolvidaITEM_NDEV: TIntegerField;
    sdsNotaDevolvidaID_FORNECEDOR: TIntegerField;
    sdsNotaDevolvidaFILIAL_NTE: TIntegerField;
    sdsNotaDevolvidaID_NTE: TIntegerField;
    sdsNotaDevolvidaITEM_NTE: TIntegerField;
    sdsNotaDevolvidaQTD: TFloatField;
    sdsNotaDevolvidaNFECHAVEACESSO_NTE: TStringField;
    sdsNotaDevolvidaNUMNOTA_ENTRADA: TIntegerField;
    sdsNotaDevolvidaSERIE_ENTRADA: TStringField;
    sdsNotaDevolvidaMODELO: TStringField;
    sdsNotaDevolvidaDTEMISSAO_NTE: TDateField;
    sdsNotaDevolvidaNUMNOTA: TIntegerField;
    sdsNotaDevolvidaSERIE: TStringField;
    sdsNotaDevolvidaDTEMISSAO: TDateField;
    cdsNotaDevolvidaID: TIntegerField;
    cdsNotaDevolvidaITEM: TIntegerField;
    cdsNotaDevolvidaITEM_NDEV: TIntegerField;
    cdsNotaDevolvidaID_FORNECEDOR: TIntegerField;
    cdsNotaDevolvidaFILIAL_NTE: TIntegerField;
    cdsNotaDevolvidaID_NTE: TIntegerField;
    cdsNotaDevolvidaITEM_NTE: TIntegerField;
    cdsNotaDevolvidaQTD: TFloatField;
    cdsNotaDevolvidaNFECHAVEACESSO_NTE: TStringField;
    cdsNotaDevolvidaNUMNOTA_ENTRADA: TIntegerField;
    cdsNotaDevolvidaSERIE_ENTRADA: TStringField;
    cdsNotaDevolvidaMODELO: TStringField;
    cdsNotaDevolvidaDTEMISSAO_NTE: TDateField;
    cdsNotaDevolvidaNUMNOTA: TIntegerField;
    cdsNotaDevolvidaSERIE: TStringField;
    cdsNotaDevolvidaDTEMISSAO: TDateField;
    sdsNotaEntradaFILIAL: TIntegerField;
    cdsNotaEntradaFILIAL: TIntegerField;
    sdsAtualiza: TSQLDataSet;
    dspAtualiza: TDataSetProvider;
    cdsAtualiza: TClientDataSet;
    dsAtualiza: TDataSource;
    sdsAtualizaID: TIntegerField;
    sdsAtualizaITEM: TIntegerField;
    sdsAtualizaID_PRODUTO: TIntegerField;
    sdsAtualizaID_COR: TIntegerField;
    sdsAtualizaTAMANHO: TStringField;
    sdsAtualizaID_NCM: TIntegerField;
    sdsAtualizaUNIDADE: TStringField;
    sdsAtualizaQTD: TFloatField;
    sdsAtualizaID_CFOP: TIntegerField;
    sdsAtualizaID_CSTICMS: TIntegerField;
    sdsAtualizaID_CSTIPI: TIntegerField;
    sdsAtualizaID_PIS: TIntegerField;
    sdsAtualizaID_COFINS: TIntegerField;
    sdsAtualizaPERC_ICMS: TFloatField;
    sdsAtualizaPERC_IPI: TFloatField;
    sdsAtualizaVLR_UNITARIO: TFloatField;
    sdsAtualizaVLR_TOTAL: TFloatField;
    sdsAtualizaPERC_DESCONTO: TFloatField;
    sdsAtualizaVLR_DESCONTO: TFloatField;
    sdsAtualizaBASE_ICMS: TFloatField;
    sdsAtualizaVLR_ICMS: TFloatField;
    sdsAtualizaVLR_IPI: TFloatField;
    sdsAtualizaPERC_PIS: TFloatField;
    sdsAtualizaPERC_COFINS: TFloatField;
    sdsAtualizaVLR_PIS: TFloatField;
    sdsAtualizaVLR_COFINS: TFloatField;
    sdsAtualizaTIPO_PIS: TStringField;
    sdsAtualizaTIPO_COFINS: TStringField;
    sdsAtualizaORIGEM_PROD: TStringField;
    sdsAtualizaBASE_ICMSSIMPLES: TFloatField;
    sdsAtualizaVLR_ICMSSIMPLES: TFloatField;
    sdsAtualizaCALCULARICMSSOBREIPI: TStringField;
    sdsAtualizaNOME_PRODUTO: TStringField;
    sdsAtualizaREFERENCIA: TStringField;
    sdsAtualizaID_MOVESTOQUE: TIntegerField;
    sdsAtualizaGERAR_DUPLICATA: TStringField;
    sdsAtualizaGERAR_ESTOQUE: TStringField;
    sdsAtualizaNUMERO_OC: TStringField;
    sdsAtualizaNUMERO_OS: TStringField;
    sdsAtualizaITEM_PEDIDO: TIntegerField;
    sdsAtualizaPERC_COMISSAO: TFloatField;
    sdsAtualizaQTDRESTANTE: TFloatField;
    sdsAtualizaQTDDEVOLVIDA: TFloatField;
    sdsAtualizaSOMAR_TRANSF_ICMS: TStringField;
    sdsAtualizaOBS_COMPLEMENTAR: TStringField;
    sdsAtualizaSOMAR_VLRTOTALPRODUTO: TStringField;
    sdsAtualizaVLR_FRETE: TFloatField;
    sdsAtualizaVLR_OUTRASDESPESAS: TFloatField;
    sdsAtualizaVLR_SEGURO: TFloatField;
    sdsAtualizaVLR_ICMSFRETE: TFloatField;
    sdsAtualizaVLR_ICMSOUTRASDESPESAS: TFloatField;
    sdsAtualizaBASE_ICMSSUBST: TFloatField;
    sdsAtualizaVLR_ICMSSUBST: TFloatField;
    sdsAtualizaVLR_IMPORTACAO: TFloatField;
    sdsAtualizaVLR_ADUANEIRA: TFloatField;
    sdsAtualizaVLR_DESCONTORATEIO: TFloatField;
    sdsAtualizaID_OPERACAO_NOTA: TIntegerField;
    sdsAtualizaQTD_ADEVOLVER: TFloatField;
    sdsAtualizaQTD_PACOTE: TFloatField;
    sdsAtualizaITEM_DEVOL: TStringField;
    sdsAtualizaID_PEDIDO: TIntegerField;
    sdsAtualizaFINALIDADE: TStringField;
    sdsAtualizaID_VARIACAO: TIntegerField;
    sdsAtualizaPERC_TRIBICMS: TFloatField;
    sdsAtualizaCOD_PRODUTO_FORN: TStringField;
    sdsAtualizaCOD_BARRA: TStringField;
    sdsAtualizaIMP_OC_NOTA: TStringField;
    sdsAtualizaNUM_PEDIDO: TIntegerField;
    sdsAtualizaID_NTE: TIntegerField;
    sdsAtualizaITEM_NTE: TIntegerField;
    sdsAtualizaQTD_NOTAATUAL: TFloatField;
    cdsAtualizaID: TIntegerField;
    cdsAtualizaITEM: TIntegerField;
    cdsAtualizaID_PRODUTO: TIntegerField;
    cdsAtualizaID_COR: TIntegerField;
    cdsAtualizaTAMANHO: TStringField;
    cdsAtualizaID_NCM: TIntegerField;
    cdsAtualizaUNIDADE: TStringField;
    cdsAtualizaQTD: TFloatField;
    cdsAtualizaID_CFOP: TIntegerField;
    cdsAtualizaID_CSTICMS: TIntegerField;
    cdsAtualizaID_CSTIPI: TIntegerField;
    cdsAtualizaID_PIS: TIntegerField;
    cdsAtualizaID_COFINS: TIntegerField;
    cdsAtualizaPERC_ICMS: TFloatField;
    cdsAtualizaPERC_IPI: TFloatField;
    cdsAtualizaVLR_UNITARIO: TFloatField;
    cdsAtualizaVLR_TOTAL: TFloatField;
    cdsAtualizaPERC_DESCONTO: TFloatField;
    cdsAtualizaVLR_DESCONTO: TFloatField;
    cdsAtualizaBASE_ICMS: TFloatField;
    cdsAtualizaVLR_ICMS: TFloatField;
    cdsAtualizaVLR_IPI: TFloatField;
    cdsAtualizaPERC_PIS: TFloatField;
    cdsAtualizaPERC_COFINS: TFloatField;
    cdsAtualizaVLR_PIS: TFloatField;
    cdsAtualizaVLR_COFINS: TFloatField;
    cdsAtualizaTIPO_PIS: TStringField;
    cdsAtualizaTIPO_COFINS: TStringField;
    cdsAtualizaORIGEM_PROD: TStringField;
    cdsAtualizaBASE_ICMSSIMPLES: TFloatField;
    cdsAtualizaVLR_ICMSSIMPLES: TFloatField;
    cdsAtualizaCALCULARICMSSOBREIPI: TStringField;
    cdsAtualizaNOME_PRODUTO: TStringField;
    cdsAtualizaREFERENCIA: TStringField;
    cdsAtualizaID_MOVESTOQUE: TIntegerField;
    cdsAtualizaGERAR_DUPLICATA: TStringField;
    cdsAtualizaGERAR_ESTOQUE: TStringField;
    cdsAtualizaNUMERO_OC: TStringField;
    cdsAtualizaNUMERO_OS: TStringField;
    cdsAtualizaITEM_PEDIDO: TIntegerField;
    cdsAtualizaPERC_COMISSAO: TFloatField;
    cdsAtualizaQTDRESTANTE: TFloatField;
    cdsAtualizaQTDDEVOLVIDA: TFloatField;
    cdsAtualizaSOMAR_TRANSF_ICMS: TStringField;
    cdsAtualizaOBS_COMPLEMENTAR: TStringField;
    cdsAtualizaSOMAR_VLRTOTALPRODUTO: TStringField;
    cdsAtualizaVLR_FRETE: TFloatField;
    cdsAtualizaVLR_OUTRASDESPESAS: TFloatField;
    cdsAtualizaVLR_SEGURO: TFloatField;
    cdsAtualizaVLR_ICMSFRETE: TFloatField;
    cdsAtualizaVLR_ICMSOUTRASDESPESAS: TFloatField;
    cdsAtualizaBASE_ICMSSUBST: TFloatField;
    cdsAtualizaVLR_ICMSSUBST: TFloatField;
    cdsAtualizaVLR_IMPORTACAO: TFloatField;
    cdsAtualizaVLR_ADUANEIRA: TFloatField;
    cdsAtualizaVLR_DESCONTORATEIO: TFloatField;
    cdsAtualizaID_OPERACAO_NOTA: TIntegerField;
    cdsAtualizaQTD_ADEVOLVER: TFloatField;
    cdsAtualizaQTD_PACOTE: TFloatField;
    cdsAtualizaITEM_DEVOL: TStringField;
    cdsAtualizaID_PEDIDO: TIntegerField;
    cdsAtualizaFINALIDADE: TStringField;
    cdsAtualizaID_VARIACAO: TIntegerField;
    cdsAtualizaPERC_TRIBICMS: TFloatField;
    cdsAtualizaCOD_PRODUTO_FORN: TStringField;
    cdsAtualizaCOD_BARRA: TStringField;
    cdsAtualizaIMP_OC_NOTA: TStringField;
    cdsAtualizaNUM_PEDIDO: TIntegerField;
    cdsAtualizaID_NTE: TIntegerField;
    cdsAtualizaITEM_NTE: TIntegerField;
    cdsAtualizaQTD_NOTAATUAL: TFloatField;
    mMaterial: TClientDataSet;
    dsmMaterial: TDataSource;
    mMaterialCodigo: TIntegerField;
    mMaterialNome: TStringField;
    mMaterialQtd: TFloatField;
    mMaterialQtdRestante: TFloatField;
    mMaterialQtdDevolvida: TFloatField;
    mMaterialVlrTotal: TFloatField;
    mMaterialVlrRestante: TFloatField;
    mMaterialVlrDevolvida: TFloatField;
    mMaterialReferencia: TStringField;
    sdsNotaDevolvidaTIPO_NOTA: TStringField;
    sdsNotaDevolvidaTIPO_NOTA_NF: TStringField;
    cdsNotaDevolvidaTIPO_NOTA: TStringField;
    cdsNotaDevolvidaTIPO_NOTA_NF: TStringField;
    sdsAtualizaTIPO_NOTA: TStringField;
    cdsAtualizaTIPO_NOTA: TStringField;
    sdsNotaEntradaNOME_CLIENTETRIANG: TStringField;
    cdsNotaEntradaNOME_CLIENTETRIANG: TStringField;
    sdsAtualizaVLR_DUPLICATA: TFloatField;
    sdsAtualizaPERC_IMPORTACAO: TFloatField;
    sdsAtualizaTIPO_REG: TStringField;
    sdsAtualizaPERC_MVA: TFloatField;
    sdsAtualizaPERC_REDUCAO_ICMSSUBST: TFloatField;
    sdsAtualizaID_MOVIMENTO: TIntegerField;
    sdsAtualizaVLR_TRIBUTOS: TFloatField;
    sdsAtualizaCONTA_ORCAMENTO_ID: TIntegerField;
    sdsAtualizaCENTRO_CUSTO_ID: TIntegerField;
    sdsAtualizaPERC_TRIBUTO: TFloatField;
    sdsAtualizaPOSSUI_VALE: TStringField;
    sdsAtualizaITEM_CLIENTE: TIntegerField;
    sdsAtualizaNUM_FCI: TStringField;
    sdsAtualizaPERC_USADO_FCI: TFloatField;
    cdsAtualizaVLR_DUPLICATA: TFloatField;
    cdsAtualizaPERC_IMPORTACAO: TFloatField;
    cdsAtualizaTIPO_REG: TStringField;
    cdsAtualizaPERC_MVA: TFloatField;
    cdsAtualizaPERC_REDUCAO_ICMSSUBST: TFloatField;
    cdsAtualizaID_MOVIMENTO: TIntegerField;
    cdsAtualizaVLR_TRIBUTOS: TFloatField;
    cdsAtualizaCONTA_ORCAMENTO_ID: TIntegerField;
    cdsAtualizaCENTRO_CUSTO_ID: TIntegerField;
    cdsAtualizaPERC_TRIBUTO: TFloatField;
    cdsAtualizaPOSSUI_VALE: TStringField;
    cdsAtualizaITEM_CLIENTE: TIntegerField;
    cdsAtualizaNUM_FCI: TStringField;
    cdsAtualizaPERC_USADO_FCI: TFloatField;
    sdsNotaPendente: TSQLDataSet;
    dspNotaPendente: TDataSetProvider;
    cdsNotaPendente: TClientDataSet;
    dsNotaPendente: TDataSource;
    sdsBaixa_NFDevolvida: TSQLDataSet;
    dspBaixa_NFDevolvida: TDataSetProvider;
    cdsBaixa_NFDevolvida: TClientDataSet;
    dsBaixa_NFDevolvida: TDataSource;
    sdsBaixa_NFDevolvidaID: TIntegerField;
    sdsBaixa_NFDevolvidaID_NOTA: TIntegerField;
    sdsBaixa_NFDevolvidaITEM_NOTA: TIntegerField;
    sdsBaixa_NFDevolvidaDT_BAIXA: TDateField;
    sdsBaixa_NFDevolvidaQTD: TFloatField;
    sdsBaixa_NFDevolvidaID_MOVESTOQUE: TIntegerField;
    cdsBaixa_NFDevolvidaID: TIntegerField;
    cdsBaixa_NFDevolvidaID_NOTA: TIntegerField;
    cdsBaixa_NFDevolvidaITEM_NOTA: TIntegerField;
    cdsBaixa_NFDevolvidaDT_BAIXA: TDateField;
    cdsBaixa_NFDevolvidaQTD: TFloatField;
    cdsBaixa_NFDevolvidaID_MOVESTOQUE: TIntegerField;
    sdsNotaPendenteDTEMISSAO: TDateField;
    sdsNotaPendenteID_NTE: TIntegerField;
    sdsNotaPendenteSERIE: TStringField;
    sdsNotaPendenteNUMNOTA: TIntegerField;
    sdsNotaPendenteID_CLIENTE: TIntegerField;
    sdsNotaPendenteNOMECLIENTE: TStringField;
    sdsNotaPendenteCNPJ_CPF: TStringField;
    sdsNotaPendenteITEM_NTE: TIntegerField;
    sdsNotaPendenteID_PRODUTO: TIntegerField;
    sdsNotaPendenteNOMEPRODUTO: TStringField;
    sdsNotaPendenteREFERENCIA: TStringField;
    sdsNotaPendenteQTD: TFloatField;
    sdsNotaPendenteQTDRESTANTE: TFloatField;
    sdsNotaPendenteQTD_ADEVOLVER: TFloatField;
    sdsNotaPendenteQTDDEVOLVIDA: TFloatField;
    sdsNotaPendenteNOMEFILIAL: TStringField;
    sdsNotaPendenteCODCFOP: TStringField;
    sdsNotaPendenteBENEFICIAMENTO: TStringField;
    sdsNotaPendenteVLR_UNITARIO: TFloatField;
    sdsNotaPendenteUNIDADE: TStringField;
    sdsNotaPendenteFILIAL: TIntegerField;
    sdsNotaPendenteNOME_CLIENTETRIANG: TStringField;
    cdsNotaPendenteDTEMISSAO: TDateField;
    cdsNotaPendenteID_NTE: TIntegerField;
    cdsNotaPendenteSERIE: TStringField;
    cdsNotaPendenteNUMNOTA: TIntegerField;
    cdsNotaPendenteID_CLIENTE: TIntegerField;
    cdsNotaPendenteNOMECLIENTE: TStringField;
    cdsNotaPendenteCNPJ_CPF: TStringField;
    cdsNotaPendenteITEM_NTE: TIntegerField;
    cdsNotaPendenteID_PRODUTO: TIntegerField;
    cdsNotaPendenteNOMEPRODUTO: TStringField;
    cdsNotaPendenteREFERENCIA: TStringField;
    cdsNotaPendenteQTD: TFloatField;
    cdsNotaPendenteQTDRESTANTE: TFloatField;
    cdsNotaPendenteQTD_ADEVOLVER: TFloatField;
    cdsNotaPendenteQTDDEVOLVIDA: TFloatField;
    cdsNotaPendenteNOMEFILIAL: TStringField;
    cdsNotaPendenteCODCFOP: TStringField;
    cdsNotaPendenteBENEFICIAMENTO: TStringField;
    cdsNotaPendenteVLR_UNITARIO: TFloatField;
    cdsNotaPendenteUNIDADE: TStringField;
    cdsNotaPendenteFILIAL: TIntegerField;
    cdsNotaPendenteNOME_CLIENTETRIANG: TStringField;
    sdsNotaPendenteID_CFOP: TIntegerField;
    cdsNotaPendenteID_CFOP: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    ctBaixa_NFDevolvida : string;
    { Private declarations }

  public
    { Public declarations }
    fDMEstoque : TDMEstoque;
    ctNotaEntrada : String;
    ctNotaPendente : String;
    procedure prc_Abrir_Baixa_NFDevolvida(ID, ID_Nota: Integer);
    procedure prc_Gravar_Baixa(Tipo_Reg_Pedido, Estoque, Tipo_Mov : String ; DtBaixa : TDateTime);

  end;

var
  DMConsNotaBeneficiamento: TDMConsNotaBeneficiamento;

implementation

uses DmdDatabase;

{$R *.dfm}


procedure TDMConsNotaBeneficiamento.DataModuleCreate(Sender: TObject);
begin
  ctNotaEntrada := sdsNotaEntrada.CommandText;
  ctNotaPendente := sdsNotaPendente.CommandText;
  ctBaixa_NFDevolvida := sdsBaixa_NFDevolvida.CommandText;
  cdsFilial.Open;
  cdsProduto.Open;
  cdsFornecedor.Open;
end;

procedure TDMConsNotaBeneficiamento.prc_Abrir_Baixa_NFDevolvida(
  ID, ID_Nota: Integer);
begin
  cdsBaixa_NFDevolvida.Close;
  sdsBaixa_NFDevolvida.CommandText := ctBaixa_NFDevolvida;
  if ID <> 0 then
    sdsBaixa_NFDevolvida.CommandText := sdsBaixa_NFDevolvida.CommandText + ' WHERE ID = ' + IntToStr(ID);
  if ID_Nota <> 0 then
    sdsBaixa_NFDevolvida.CommandText := sdsBaixa_NFDevolvida.CommandText + ' WHERE ID_Nota = ' + IntToStr(ID_Nota);
  cdsBaixa_NFDevolvida.Open;
end;

procedure TDMConsNotaBeneficiamento.prc_Gravar_Baixa(Tipo_Reg_Pedido,
  Estoque, Tipo_Mov: String; DtBaixa: TDateTime);
var
  ID: TTransactionDesc;
  vAux : Integer;
  vID_Estoque : Integer;
  vES : String;
  vID_BaixaTalao : Integer;
  vQtd : Real;
begin
  vAux := dmDatabase.ProximaSequencia('BAIXA_NFDEVOLVIDA',0);
  if not cdsBaixa_NFDevolvida.Active then
    prc_Abrir_Baixa_NFDevolvida(-1,0);

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    vQtd := cdsNotaPendenteQTD_ADEVOLVER.AsFloat;
    cdsBaixa_NFDevolvida.Insert;
    cdsBaixa_NFDevolvidaID.AsInteger := vAux;
    cdsBaixa_NFDevolvidaID_NOTA.AsInteger     := cdsNotaPendenteID_NTE.AsInteger;
    cdsBaixa_NFDevolvidaITEM_NOTA.AsInteger   := cdsNotaPendenteITEM_NTE.AsInteger;
    cdsBaixa_NFDevolvidaDT_BAIXA.AsDateTime   := DtBaixa;
    cdsBaixa_NFDevolvidaQTD.AsFloat           := vQtd;
    cdsBaixa_NFDevolvidaID_MOVESTOQUE.AsInteger := 0;
    cdsBaixa_NFDevolvida.Post;

    if Estoque = 'S' then
    begin
      vID_Estoque := fDMEstoque.fnc_Gravar_Estoque(0,
                                                 cdsNotaPendenteFILIAL.AsInteger,
                                                 1, //aqui verificar o local do estoque
                                                 cdsNotaPendenteID_PRODUTO.AsInteger,
                                                 0,
                                                 cdsNotaPendenteID_CLIENTE.AsInteger,
                                                 cdsNotaPendenteID_CFOP.AsInteger,
                                                 cdsNotaPendenteID_NTE.AsInteger,0,
                                                 'S','NTE',
                                                 cdsNotaPendenteUNIDADE.AsString,
                                                 cdsNotaPendenteUNIDADE.AsString,
                                                 cdsNotaPendenteSERIE.AsString,
                                                 '',
                                                 cdsBaixa_NFDevolvidaDT_BAIXA.AsDateTime,
                                                 cdsNotaPendenteVLR_UNITARIO.AsFloat,
                                                 cdsBaixa_NFDevolvidaQTD.AsFloat,
                                                 0,0,0,0,0,
                                                 cdsBaixa_NFDevolvidaQTD.AsFloat,
                                                 cdsNotaPendenteVLR_UNITARIO.AsFloat,
                                                 0,0,'',0,'','N',0); //ver aqui sobre Lote Controle
      cdsBaixa_NFDevolvida.Edit;
      cdsBaixa_NFDevolvidaID_MOVESTOQUE.AsInteger := vID_Estoque;
      cdsBaixa_NFDevolvida.Post;
    end;

    cdsBaixa_NFDevolvida.ApplyUpdates(0);
    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
end;

end.
