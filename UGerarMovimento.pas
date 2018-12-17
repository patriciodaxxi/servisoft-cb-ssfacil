unit UGerarMovimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, NxCollection, UDMMovimento, ToolEdit,
  FMTBcd, UDMCadNotaFiscal, UDMCadNotaServico, SqlExpr, DB, NxPageControl, RzStatus, StdCtrls, RzLabel, Mask, DBClient, Provider,
  UDMCadRecibo;

type
  TfrmGerarMovimento = class(TForm)
    btnAlterar: TNxButton;
    NxButton1: TNxButton;
    RzProgressStatus1: TRzProgressStatus;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    btnCupomFiscal: TNxButton;
    RzLabel3: TRzLabel;
    sdsCupomFiscal: TSQLDataSet;
    dspCupomFiscal: TDataSetProvider;
    cdsCupomFiscal: TClientDataSet;
    cdsCupomFiscalID: TIntegerField;
    cdsCupomFiscalNUMCUPOM: TIntegerField;
    cdsCupomFiscalDTEMISSAO: TDateField;
    cdsCupomFiscalHREMISSAO: TTimeField;
    cdsCupomFiscalID_CLIENTE: TIntegerField;
    cdsCupomFiscalTIPO_PGTO: TStringField;
    cdsCupomFiscalID_CONDPGTO: TIntegerField;
    cdsCupomFiscalID_VENDEDOR: TIntegerField;
    cdsCupomFiscalPERC_VENDEDOR: TFloatField;
    cdsCupomFiscalBASE_ICMS: TFloatField;
    cdsCupomFiscalVLR_ICMS: TFloatField;
    cdsCupomFiscalVLR_PRODUTOS: TFloatField;
    cdsCupomFiscalVLR_DESCONTO: TFloatField;
    cdsCupomFiscalVLR_TOTAL: TFloatField;
    cdsCupomFiscalCANCELADO: TStringField;
    cdsCupomFiscalVLR_RECEBIDO: TFloatField;
    cdsCupomFiscalVLR_TROCO: TFloatField;
    cdsCupomFiscalID_CONTA: TIntegerField;
    cdsCupomFiscalFILIAL: TIntegerField;
    cdsCupomFiscalID_TIPOCOBRANCA: TIntegerField;
    cdsCupomFiscalCPF: TStringField;
    cdsCupomFiscalTIPO: TStringField;
    cdsCupomFiscalTERMINAL_ID: TSmallintField;
    cdsCupomFiscalVLR_TRIBUTO: TFloatField;
    dsmCupomFiscal: TDataSource;
    sdsCupomFiscal_Itens: TSQLDataSet;
    sdsCupomFiscal_ItensID: TIntegerField;
    sdsCupomFiscal_ItensITEM: TIntegerField;
    sdsCupomFiscal_ItensID_PRODUTO: TIntegerField;
    sdsCupomFiscal_ItensQTD: TFloatField;
    sdsCupomFiscal_ItensPERC_ICMS: TFloatField;
    sdsCupomFiscal_ItensVLR_UNITARIO: TFloatField;
    sdsCupomFiscal_ItensPERC_DESCONTO: TFloatField;
    sdsCupomFiscal_ItensVLR_DESCONTO: TFloatField;
    sdsCupomFiscal_ItensBASE_ICMS: TFloatField;
    sdsCupomFiscal_ItensVLR_ICMS: TFloatField;
    sdsCupomFiscal_ItensVLR_TOTAL: TFloatField;
    sdsCupomFiscal_ItensID_CFOP: TIntegerField;
    sdsCupomFiscal_ItensID_MOVESTOQUE: TIntegerField;
    sdsCupomFiscal_ItensUNIDADE: TStringField;
    sdsCupomFiscal_ItensCANCELADO: TStringField;
    sdsCupomFiscal_ItensSITTRIB: TStringField;
    sdsCupomFiscal_ItensTAMANHO: TStringField;
    sdsCupomFiscal_ItensID_MOVIMENTO: TIntegerField;
    sdsCupomFiscal_ItensREFERENCIA: TStringField;
    sdsCupomFiscal_ItensPERC_TRIBUTO: TFloatField;
    sdsCupomFiscal_ItensVLR_TRIBUTO: TFloatField;
    sdsCupomFiscal_ItensID_NCM: TIntegerField;
    sdsCupomFiscal_ItensORIGEM_PROD: TStringField;
    cdsCupomFiscal_Itens: TClientDataSet;
    cdsCupomFiscal_ItensID: TIntegerField;
    cdsCupomFiscal_ItensITEM: TIntegerField;
    cdsCupomFiscal_ItensID_PRODUTO: TIntegerField;
    cdsCupomFiscal_ItensQTD: TFloatField;
    cdsCupomFiscal_ItensPERC_ICMS: TFloatField;
    cdsCupomFiscal_ItensVLR_UNITARIO: TFloatField;
    cdsCupomFiscal_ItensPERC_DESCONTO: TFloatField;
    cdsCupomFiscal_ItensVLR_DESCONTO: TFloatField;
    cdsCupomFiscal_ItensBASE_ICMS: TFloatField;
    cdsCupomFiscal_ItensVLR_ICMS: TFloatField;
    cdsCupomFiscal_ItensVLR_TOTAL: TFloatField;
    cdsCupomFiscal_ItensID_CFOP: TIntegerField;
    cdsCupomFiscal_ItensID_MOVESTOQUE: TIntegerField;
    cdsCupomFiscal_ItensUNIDADE: TStringField;
    cdsCupomFiscal_ItensCANCELADO: TStringField;
    cdsCupomFiscal_ItensSITTRIB: TStringField;
    cdsCupomFiscal_ItensTAMANHO: TStringField;
    cdsCupomFiscal_ItensID_MOVIMENTO: TIntegerField;
    cdsCupomFiscal_ItensREFERENCIA: TStringField;
    cdsCupomFiscal_ItensPERC_TRIBUTO: TFloatField;
    cdsCupomFiscal_ItensVLR_TRIBUTO: TFloatField;
    cdsCupomFiscal_ItensID_NCM: TIntegerField;
    cdsCupomFiscal_ItensORIGEM_PROD: TStringField;
    sdsCupomFiscalID: TIntegerField;
    sdsCupomFiscalNUMCUPOM: TIntegerField;
    sdsCupomFiscalDTEMISSAO: TDateField;
    sdsCupomFiscalHREMISSAO: TTimeField;
    sdsCupomFiscalID_CLIENTE: TIntegerField;
    sdsCupomFiscalTIPO_PGTO: TStringField;
    sdsCupomFiscalID_CONDPGTO: TIntegerField;
    sdsCupomFiscalID_VENDEDOR: TIntegerField;
    sdsCupomFiscalPERC_VENDEDOR: TFloatField;
    sdsCupomFiscalBASE_ICMS: TFloatField;
    sdsCupomFiscalVLR_ICMS: TFloatField;
    sdsCupomFiscalVLR_PRODUTOS: TFloatField;
    sdsCupomFiscalVLR_DESCONTO: TFloatField;
    sdsCupomFiscalVLR_TOTAL: TFloatField;
    sdsCupomFiscalCANCELADO: TStringField;
    sdsCupomFiscalVLR_RECEBIDO: TFloatField;
    sdsCupomFiscalVLR_TROCO: TFloatField;
    sdsCupomFiscalID_CONTA: TIntegerField;
    sdsCupomFiscalFILIAL: TIntegerField;
    sdsCupomFiscalID_TIPOCOBRANCA: TIntegerField;
    sdsCupomFiscalCPF: TStringField;
    sdsCupomFiscalTIPO: TStringField;
    sdsCupomFiscalTERMINAL_ID: TSmallintField;
    sdsCupomFiscalVLR_TRIBUTO: TFloatField;
    cdsCupomFiscalsdsCupomFiscal_Itens: TDataSetField;
    qFilial: TSQLQuery;
    qFilialID: TIntegerField;
    qFilialNOME: TStringField;
    qFilialNOME_INTERNO: TStringField;
    qFilialENDERECO: TStringField;
    qFilialCOMPLEMENTO_END: TStringField;
    qFilialNUM_END: TStringField;
    qFilialBAIRRO: TStringField;
    qFilialCEP: TStringField;
    qFilialID_CIDADE: TIntegerField;
    qFilialCIDADE: TStringField;
    qFilialUF: TStringField;
    qFilialDDD1: TIntegerField;
    qFilialFONE1: TStringField;
    qFilialDDD2: TIntegerField;
    qFilialFONE: TStringField;
    qFilialDDDFAX: TIntegerField;
    qFilialFAX: TStringField;
    qFilialPESSOA: TStringField;
    qFilialCNPJ_CPF: TStringField;
    qFilialINSCR_EST: TStringField;
    qFilialSIMPLES: TStringField;
    qFilialENDLOGO: TStringField;
    qFilialCALCULAR_IPI: TStringField;
    qFilialINATIVO: TStringField;
    qFilialINSCMUNICIPAL: TStringField;
    qFilialCNAE: TStringField;
    qFilialHOMEPAGE: TStringField;
    qFilialID_REGIME_TRIB: TIntegerField;
    qFilialID_PIS: TIntegerField;
    qFilialID_COFINS: TIntegerField;
    qFilialTIPO_PIS: TStringField;
    qFilialTIPO_COFINS: TStringField;
    qFilialPERC_PIS: TFloatField;
    qFilialPERC_COFINS: TFloatField;
    qFilialID_CSTICMS: TIntegerField;
    qFilialID_CSTIPI: TIntegerField;
    qFilialEMAIL_NFE: TStringField;
    qFilialDTESTOQUE: TDateField;
    qFilialPRINCIPAL: TStringField;
    qFilialLIBERADO_ATE: TStringField;
    qFilialULTIMO_ACESSO: TStringField;
    qFilialUSARICMSSIMPLES: TStringField;
    qFilialSERIENORMAL: TStringField;
    qFilialID_REGIME_TRIB_NFSE: TIntegerField;
    qFilialINCENTIVO_CULTURAL: TStringField;
    qFilialSERIE_NFSE: TStringField;
    qFilialID_NATUREZA: TIntegerField;
    qFilialID_SERVICO_SINT: TIntegerField;
    qFilialID_SERVICO_PAD: TIntegerField;
    qFilialPERC_IR: TFloatField;
    qFilialVLR_IR_MINIMO: TFloatField;
    qFilialPERC_ISS: TFloatField;
    qFilialCOD_TRIBUTACAO_MUNICIPIO: TStringField;
    qFilialNUMLOTE: TIntegerField;
    qFilialENDLOGO_NFSE: TStringField;
    qFilialPERC_CSLL: TFloatField;
    qFilialCNAE_NFSE: TStringField;
    qFilialPERC_INSS: TFloatField;
    qFilialID_ATIVIDADE_CID: TIntegerField;
    qFilialNFSE_HOMOLOGACAO: TStringField;
    qFilialPERC_CSRF: TFloatField;
    qFilialVLR_FATURAMENTO_MES_CSRF: TFloatField;
    qFilialPERC_TRIB_SERV: TFloatField;
    qFilialPERC_TRIB_NTS_IND: TFloatField;
    qFilialPERC_TRIB_NTS_VEN: TFloatField;
    qFilialPERC_TRIB_NTS_IND_EXP: TFloatField;
    qFilialPERC_TRIB_NTS_VEN_EXP: TFloatField;
    qFilialPERC_LISTA_CAMEX: TFloatField;
    qFilialIMPRESSAO_MATRICIAL: TStringField;
    qFilialID_CONTABILISTA: TIntegerField;
    qFilialINSCR_SUFRAMA: TStringField;
    qFilialSPED_PERFIL: TStringField;
    qFilialSPED_ATIVIDADE: TStringField;
    qFilialEMAIL: TStringField;
    qFilialLICENCA_FEPAM: TStringField;
    qProduto: TSQLQuery;
    qProdutoID: TIntegerField;
    qProdutoTIPO_REG: TStringField;
    qProdutoNOME: TStringField;
    qProdutoREFERENCIA: TStringField;
    qParametros: TSQLQuery;
    qParametrosUSA_CUPOM_FISCAL: TStringField;
    NxButton2: TNxButton;
    RzLabel4: TRzLabel;
    btnGravar_Ult_Fat: TNxButton;
    btnGravar_Metas: TNxButton;
    sdsPedido: TSQLDataSet;
    dspPedido: TDataSetProvider;
    cdsPedido: TClientDataSet;
    dsPedido: TDataSource;
    sdsMetas_Acum: TSQLDataSet;
    dspMetas_Acum: TDataSetProvider;
    cdsMetas_Acum: TClientDataSet;
    dsMetas_Acum: TDataSource;
    sdsMetas_AcumID_VENDEDOR: TIntegerField;
    sdsMetas_AcumANO: TIntegerField;
    sdsMetas_AcumMES: TIntegerField;
    sdsMetas_AcumVALOR: TFloatField;
    sdsMetas_AcumANO_MES: TStringField;
    cdsMetas_AcumID_VENDEDOR: TIntegerField;
    cdsMetas_AcumANO: TIntegerField;
    cdsMetas_AcumMES: TIntegerField;
    cdsMetas_AcumVALOR: TFloatField;
    cdsMetas_AcumANO_MES: TStringField;
    cdsPedidoID_VENDEDOR: TIntegerField;
    cdsPedidoVLR_TOTAL: TFloatField;
    cdsPedidoDTEMISSAO: TDateField;
    cdsPedidoVLR_ICMSSUBST: TFloatField;
    cdsPedidoVLR_ITENS: TFloatField;
    cdsPedidoVLR_DESCONTO: TFloatField;
    cdsPedidoVLR_DESCONTO_ITEM: TFloatField;
    sdsNota: TSQLDataSet;
    dspNota: TDataSetProvider;
    cdsNota: TClientDataSet;
    dsNota: TDataSource;
    cdsNotaID: TIntegerField;
    cdsNotaTIPO_REG: TStringField;
    cdsNotaFILIAL: TIntegerField;
    cdsNotaSERIE: TStringField;
    cdsNotaNUMNOTA: TIntegerField;
    cdsNotaDTEMISSAO: TDateField;
    cdsNotaID_CFOP: TIntegerField;
    cdsNotaID_CLIENTE: TIntegerField;
    cdsNotaID_CONDPGTO: TIntegerField;
    cdsNotaID_VENDEDOR: TIntegerField;
    cdsNotaBASE_ICMS: TFloatField;
    cdsNotaVLR_ICMS: TFloatField;
    cdsNotaVLR_IPI: TFloatField;
    cdsNotaVLR_NOTA: TFloatField;
    cdsNotaVLR_ITENS: TFloatField;
    cdsNotaVLR_DUPLICATA: TFloatField;
    cdsNotaVLR_ENTRADA: TFloatField;
    cdsNotaPERC_DESCONTO: TFloatField;
    cdsNotaVLR_DESCONTO: TFloatField;
    cdsNotaVLR_FRETE: TFloatField;
    cdsNotaVLR_SEGURO: TFloatField;
    cdsNotaVLR_OUTRASDESP: TFloatField;
    cdsNotaBASE_ICMSTRANSF: TFloatField;
    cdsNotaPERC_TRANSF: TFloatField;
    cdsNotaVLR_TRANSF: TFloatField;
    cdsNotaVLR_PIS: TFloatField;
    cdsNotaVLR_COFINS: TFloatField;
    cdsNotaVLR_TAXACISCOMEX: TFloatField;
    cdsNotaVLR_OUTROS: TFloatField;
    cdsNotaBASE_ICMSSIMPLES: TFloatField;
    cdsNotaVLR_ICMSSIMPLES: TFloatField;
    cdsNotaPERC_ICMSSIMPLES: TFloatField;
    cdsNotaVLR_IMPORTACAO: TFloatField;
    cdsNotaBASE_ICMSSUBST: TFloatField;
    cdsNotaVLR_ICMSSUBST: TFloatField;
    cdsNotaBASE_ICMSOUTROS: TFloatField;
    cdsNotaVLR_ICMSOUTROS: TFloatField;
    cdsNotaVLR_DUPLICATAOUTROS: TFloatField;
    cdsNotaVLR_ADUANEIRA: TFloatField;
    cdsNotaPERC_ICMS_PISCOFINS: TFloatField;
    cdsNotaPERC_ICMS_OUTROSVALORES: TFloatField;
    cdsNotaPERC_ICMS_FRETE: TFloatField;
    cdsNotaPERC_DESCONTOORIG: TFloatField;
    cdsNotaQTDVOLUME: TIntegerField;
    cdsNotaESPECIE: TStringField;
    cdsNotaMARCA: TStringField;
    cdsNotaNUMEROVOLUME: TStringField;
    cdsNotaPESOBRUTO: TFloatField;
    cdsNotaPESOLIQUIDO: TFloatField;
    cdsNotaPLACA: TStringField;
    cdsNotaUFPLACA: TStringField;
    cdsNotaTIPO_FRETE: TStringField;
    cdsNotaID_TRANSPORTADORA: TIntegerField;
    cdsNotaID_REDESPACHO: TIntegerField;
    cdsNotaTIPO_NOTA: TStringField;
    cdsNotaCANCELADA: TStringField;
    cdsNotaMOTIVO_CANCELADA: TStringField;
    cdsNotaDTSAIDAENTRADA: TDateField;
    cdsNotaHRSAIDAENTRADA: TTimeField;
    cdsNotaID_BANCO: TIntegerField;
    cdsNotaLOCALENTREGA: TStringField;
    cdsNotaID_EXTCOMISSAO: TIntegerField;
    cdsNotaDESCRICAO_DESC: TStringField;
    cdsNotaID_CLIENTETRIANG: TIntegerField;
    cdsNotaQTDTOTAL_ITENS: TIntegerField;
    cdsNotaNFERECIBO: TStringField;
    cdsNotaNFEPROTOCOLO: TStringField;
    cdsNotaNFECHAVEACESSO: TStringField;
    cdsNotaNFEPROTOCOLO_CANCELADA: TStringField;
    cdsNotaTIPO_ENVIONFE: TStringField;
    cdsNotaNFECODBARRA_CONTINGENCIA: TStringField;
    cdsNotaNFEVERSAO: TStringField;
    cdsNotaNFEFINALIDADE: TStringField;
    cdsNotaNFEAMBIENTE: TStringField;
    cdsNotaNUMNOTACOPIADA: TIntegerField;
    cdsNotaSERIECOPIADA: TStringField;
    cdsNotaDTCONTINGENCIA: TDateField;
    cdsNotaHRCONTINGENCIA: TTimeField;
    cdsNotaMOTIVO_CONTINGENCIA: TStringField;
    cdsNotaNFEVERSAOEMISSAO: TStringField;
    cdsNotaID_REGIMETRIB: TIntegerField;
    cdsNotaRNTC: TStringField;
    cdsNotaVAGAOBALSA_IDENTIF: TStringField;
    cdsNotaVAGAOBALSA_TIPOIDENTIF: TStringField;
    cdsNotaUFEMBEXPORTACAO: TStringField;
    cdsNotaLOCALEMBEXPORTACAO: TStringField;
    cdsNotaPISCOFINS_SOMAROUTRASDESP: TStringField;
    cdsNotaTIPO_DESCONTO: TStringField;
    cdsNotaGERARDUPL_OUTROSVALORES: TStringField;
    cdsNotaGERARDUPL_FRETE: TStringField;
    cdsNotaGERARDUPL_SEGURO: TStringField;
    cdsNotaINFORMADO_NUMNOTAMANUAL: TStringField;
    cdsNotaNFEDENEGADA: TStringField;
    cdsNotaMOTIVO_DENEGADA: TStringField;
    cdsNotaDADOS_ADICIONAIS: TMemoField;
    cdsNotaDTINICIO_DUPLICATA: TDateField;
    cdsNotaTIPO_PRAZO: TStringField;
    cdsNotaPERC_COMISSAO: TFloatField;
    cdsNotaSIMPLES_FILIAL: TStringField;
    cdsNotaID_OPERACAO_NOTA: TIntegerField;
    cdsNotaFINALIDADE: TStringField;
    cdsNotaID_VARIACAO: TIntegerField;
    cdsNotaSTATUS_MANIFESTO: TStringField;
    cdsNotaID_CONTA: TIntegerField;
    cdsNotaID_TIPO_COBRANCA: TIntegerField;
    cdsNotaCALCULAR_IMP_ITEM: TStringField;
    cdsNotaGRAVOU_DADOSADICIONAIS: TStringField;
    cdsNotaVLR_TRIBUTOS: TFloatField;
    cdsNotaUSA_TRANSFICMS: TStringField;
    cdsNotaID_NOTACOPIADA: TIntegerField;
    cdsNotaID_CONTA_ORCAMENTO: TIntegerField;
    cdsNotaNOTA_ESTORNO: TStringField;
    cdsNotaCOD_MODELO: TStringField;
    cdsNotaCOD_CONS_EE: TStringField;
    cdsNotaCOD_CONS_AGUA: TStringField;
    cdsNotaVLR_ICMSSUBST_PROPRIO: TFloatField;
    cdsNotaBASE_ICMSSUBST_PROPRIO: TFloatField;
    cdsNotaHREMISSAO: TTimeField;
    cdsNotaTIPO_DESTINO_OPERACAO: TSmallintField;
    cdsNotaTIPO_CONSUMIDOR: TSmallintField;
    cdsNotaTIPO_ATENDIMENTO: TSmallintField;
    cdsNotaLOCALDESPEXPORTACAO: TStringField;
    cdsNotaVLR_ICMSDESONERADO: TFloatField;
    cdsNotaVLR_TRIBUTOS_ESTADUAL: TFloatField;
    cdsNotaVLR_TRIBUTOS_MUNICIPAL: TFloatField;
    cdsNotaFONTE_TRIBUTOS: TStringField;
    cdsNotaVERSAO_TRIBUTOS: TStringField;
    cdsNotaVLR_TRIBUTOS_FEDERAL: TFloatField;
    cdsNotaPERC_COMISSAO_PAGAR_NOTA: TFloatField;
    cdsNotaNFEENVIADA: TStringField;
    cdsNotaSELECIONADO: TStringField;
    cdsNotaID_LOCAL_ESTOQUE: TIntegerField;
    cdsNotaVLR_ADIANTAMENTO: TFloatField;
    cdsNotaVLR_ICMS_FCP: TFloatField;
    cdsNotaVLR_ICMS_UF_DEST: TFloatField;
    cdsNotaVLR_ICMS_UF_REMET: TFloatField;
    cdsNotaVLR_BASE_COMISSAO: TFloatField;
    cdsNotaNOTIFICACAO: TIntegerField;
    cdsNotaVLR_PIS_COFINS_SUFRAMA: TFloatField;
    cdsNotaVLR_DESC_SUFRAMA: TFloatField;
    cdsNotaIBPT_CHAVE: TStringField;
    cdsNotaVLR_AFRMM: TFloatField;
    cdsNotaGEROU_MDFE: TStringField;
    cdsNotaQTD_TOTAL_PRODUTOS: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure btnCupomFiscalClick(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure btnGravar_Ult_FatClick(Sender: TObject);
    procedure btnGravar_MetasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    fDMCadNotaServico: TDMCadNotaServico;
    fDMCadNotaFiscal: TDMCadNotaFiscal;
    fDMMovimento: TDMMovimento;
    fDMCadRecibo: TDMCadRecibo;
    ctCupomFiscal: String;
    ctNota : String;

    procedure prc_Le_NotaFiscal_Ref;

  public
    { Public declarations }
  end;

var
  frmGerarMovimento: TfrmGerarMovimento;

const
  cTerminal: Integer = 1;


implementation

uses DmdDatabase, UDMCadPessoa, DateUtils;

{$R *.dfm}

procedure TfrmGerarMovimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMMovimento);
  FreeAndNil(fDMCadNotaServico);
  FreeAndNil(fDMCadNotaFiscal);
  FreeAndNil(fDMCadRecibo);
  Action := Cafree;
end;

procedure TfrmGerarMovimento.FormShow(Sender: TObject);
begin
  ctCupomFiscal     := sdsCupomFiscal.CommandText;
  fDMCadNotaServico := TDMCadNotaServico.Create(Self);
  fDMCadNotaFiscal  := TDMCadNotaFiscal.Create(Self);
  fDMMovimento      := TDMMovimento.Create(Self);
  fDMCadRecibo      := TDMCadRecibo.Create(Self);
  qParametros.Close;
  qParametros.Open;
  btnCupomFiscal.Visible := (qParametrosUSA_CUPOM_FISCAL.AsString = 'S');
end;

procedure TfrmGerarMovimento.btnAlterarClick(Sender: TObject);
var
  vID_Mov: Integer;
  sds: TSQLDataSet;
  vMotivo_CD: String;
  vDescAux: Real;
begin
  if (DateEdit1.Date <= 10) or (DateEdit2.Date <= 10) then
  begin
    MessageDlg('*** Data não informada!', mtError, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja carregar as notas de entrada e saída para o movimento?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  RzLabel1.Visible := True;
  RzLabel2.Visible := False;
  RzLabel1.Caption := 'Aguarde, excluindo movimento...';
  RzLabel1.Refresh;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'DELETE FROM MOVIMENTO WHERE ((TIPO_REG = ' + QuotedStr('NTS') + ') OR (TIPO_REG = ' + QuotedStr('NTE') + '))'
                     + ' AND DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date))
                     + ' AND DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  sds.ExecSQL;

  FreeAndNil(sds);

  RzLabel1.Caption := 'Aguarde, incluindo notas no movimento';
  RzLabel1.Refresh;

  fDMCadNotaFiscal.cdsProduto.Close;
  fDMCadNotaFiscal.cdsProduto.Open;
  fDMCadNotaFiscal.cdsFilial.Close;
  fDMCadNotaFiscal.cdsFilial.Open;


  {fDMCadNotaFiscal.cdsNotaFiscal.Close;
  fDMCadNotaFiscal.sdsNotaFiscal.CommandText := fDMCadNotaFiscal.ctCommand
                                             + ' WHERE DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date))
                                             + ' AND DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  fDMCadNotaFiscal.cdsNotaFiscal.Open;
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Close;
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Open;
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Close;
  fDMCadNotaFiscal.cdsNotaFiscal_Itens.Open;}

  cdsNota.Close;
  sdsNota.CommandText := ctNota + ' WHERE DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date))
                                + ' AND DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  cdsNota.Open;

  //RzProgressStatus1.TotalParts    := fDMCadNotaFiscal.cdsNotaFiscal.RecordCount;
  RzProgressStatus1.TotalParts    := cdsNota.RecordCount;
  RzProgressStatus1.PartsComplete := 0;
  RzProgressStatus1.Percent       := 0;

  //fDMCadNotaFiscal.cdsNotaFiscal.First;
  //while not fDMCadNotaFiscal.cdsNotaFiscal.Eof do
  while not cdsNota.Eof do
  begin
    RzProgressStatus1.PartsComplete := RzProgressStatus1.PartsComplete + 1;

    fDMCadNotaFiscal.prc_Localizar(cdsNotaID.AsInteger);
    if fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger <= 0 then
    begin
      cdsNota.Next;
      Continue;
    end;

    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Close;
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.Open;
    if fDMCadNotaFiscal.cdsFilialID.AsInteger <> fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger then
      fDMCadNotaFiscal.cdsFilial.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,[loCaseInsensitive]);
    vMotivo_CD := '';
    if fDMCadNotaFiscal.cdsNotaFiscalNFEDENEGADA.AsString = 'S' then
      vMotivo_CD := fDMCadNotaFiscal.cdsNotaFiscalMOTIVO_DENEGADA.AsString
    else
    if fDMCadNotaFiscal.cdsNotaFiscalCANCELADA.AsString = 'S' then
      vMotivo_CD := fDMCadNotaFiscal.cdsNotaFiscalMOTIVO_CANCELADA.AsString;
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.First;
    while not fDMCadNotaFiscal.cdsNotaFiscal_Itens.Eof do
    begin
      vDescAux := StrToFloat(FormatFloat('0.0000',fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTO.AsFloat + fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_DESCONTORATEIO.AsFloat));
      if (fDMCadNotaFiscal.cdsProduto.Locate('ID',fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,[loCaseInsensitive])) and (fDMCadNotaFiscal.cdsProdutoTIPO_REG.AsString <> 'N') then
      begin
        vID_Mov := fDMMovimento.fnc_Gravar_Movimento(fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVIMENTO.AsInteger,
                                                     fDMCadNotaFiscal.cdsNotaFiscalFILIAL.AsInteger,
                                                     fDMCadNotaFiscal.cdsNotaFiscal_ItensITEM.AsInteger,
                                                     fDMCadNotaFiscal.cdsNotaFiscal_ItensID_PRODUTO.AsInteger,0,
                                                     fDMCadNotaFiscal.cdsNotaFiscal_ItensID.AsInteger,
                                                     fDMCadNotaFiscal.cdsNotaFiscal_ItensID_CFOP.AsInteger,
                                                     fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTE.AsInteger,
                                                     fDMCadNotaFiscal.cdsNotaFiscalID_CLIENTETRIANG.AsInteger,
                                                     fDMCadNotaFiscal.cdsNotaFiscalNUMNOTA.AsInteger,0,
                                                     fDMCadNotaFiscal.cdsNotaFiscalTIPO_REG.AsString,
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
                                                     fDMCadNotaFiscal.cdsNotaFiscal_ItensID_COR.AsInteger,
                                                     fDMCadNotaFiscal.cdsNotaFiscalPERC_COMISSAO.AsFloat,
                                                     fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_REMET.AsFloat,
                                                     fDMCadNotaFiscal.cdsNotaFiscal_ItensVLR_ICMS_UF_DEST.AsFloat,
                                                     cTerminal,fDMCadNotaFiscal.cdsNotaFiscal_ItensPRECO_CUSTO_TOTAL.AsFloat,'N');

        if fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVIMENTO.AsInteger <> vID_Mov then
        begin
          fDMCadNotaFiscal.cdsNotaFiscal_Itens.Edit;
          fDMCadNotaFiscal.cdsNotaFiscal_ItensID_MOVIMENTO.AsInteger  := vID_Mov;
          fDMCadNotaFiscal.cdsNotaFiscal_Itens.Post;
          //fDMCadNotaFiscal.cdsNotaFiscal_Itens.ApplyUpdates(0);
        end;
      end;

      fDMCadNotaFiscal.cdsNotaFiscal_Itens.Next;
    end;
    //fDMCadNotaFiscal.cdsNotaFiscal.Next;
    fDMCadNotaFiscal.cdsNotaFiscal_Itens.ApplyUpdates(0);
    cdsNota.Next;

    if fDMCadNotaFiscal.cdsNotaFiscalNOTA_ESTORNO.AsString = 'S' then
      prc_Le_NotaFiscal_Ref;
  end;

  RzLabel1.Caption := 'Processo de inclusão de notas finalizado...';
  RzLabel1.Refresh;

  MessageDlg('*** Notas Carregadas no Movimento!', mtInformation, [mbOk], 0);
end;

procedure TfrmGerarMovimento.NxButton1Click(Sender: TObject);
var
  vID_Mov: Integer;
  sds: TSQLDataSet;
  vCancelada: String;
  vMotivo_CD: String;
  vPerc_Pis, vPerc_Cofins : Real;
  vVlr_Pis, vVlr_Cofins : Real;
begin
  if MessageDlg('Deseja carregar as notas de serviço para o movimento?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  RzLabel1.Visible := False;
  RzLabel2.Visible := True;
  RzLabel2.Caption := 'Aguarde, excluindo movimento...';
  RzLabel2.Refresh;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'DELETE FROM MOVIMENTO WHERE TIPO_REG = ' + QuotedStr('NSE')
                     + ' AND DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date))
                     + ' AND DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  sds.ExecSQL;
  
  FreeAndNil(sds);

  RzLabel2.Caption := 'Aguarde, incluindo notas no movimento';
  RzLabel2.Refresh;

  fDMCadNotaServico.cdsFilial.Close;
  fDMCadNotaServico.cdsFilial.Open;
  fDMCadNotaServico.cdsNotaServico.Close;
  fDMCadNotaServico.sdsNotaServico.CommandText := fDMCadNotaServico.ctCommand
                                             + ' WHERE DTEMISSAO_CAD >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date))
                                             + ' AND DTEMISSAO_CAD <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  fDMCadNotaServico.cdsNotaServico.Open;
  fDMCadNotaServico.cdsNotaServico.First;

  RzProgressStatus1.TotalParts    := fDMCadNotaServico.cdsNotaServico.RecordCount;
  RzProgressStatus1.PartsComplete := 0;
  RzProgressStatus1.Percent       := 0;

  while not fDMCadNotaServico.cdsNotaServico.Eof do
  begin
    RzProgressStatus1.PartsComplete := RzProgressStatus1.PartsComplete + 1;
    if fDMCadNotaServico.cdsFilialID.AsInteger <> fDMCadNotaServico.cdsNotaServicoFILIAL.AsInteger then
      fDMCadNotaFiscal.cdsFilial.Locate('ID',fDMCadNotaServico.cdsNotaServicoFILIAL.AsInteger,[loCaseInsensitive]);

    vMotivo_CD := '';
    if fDMCadNotaServico.cdsNotaServicoSTATUS_RPS.AsString = '2' then
    begin
      vCancelada := 'S';
      vMotivo_CD := fDMCadNotaServico.cdsNotaServicoMOTIVO_CANCELAMENTO.AsString;
    end
    else
      vCancelada := 'N';
    if fDMCadNotaServico.cdsNotaServicoNUMNOTA.AsInteger > 0 then
    begin
      fDMCadNotaServico.qServico.Close;
      fDMCadNotaServico.qServico.ParamByName('ID').AsInteger := fDMCadNotaServico.cdsNotaServicoID_SERVICO.AsInteger;
      fDMCadNotaServico.qServico.Open;

      if fDMCadNotaServico.qParametros_SerUSA_CALC_PISCOFINS.AsString = 'S' then
      begin
        vPerc_Pis    := fDMCadNotaServico.cdsNotaServicoPERC_PIS.AsFloat;
        vPerc_Cofins := fDMCadNotaServico.cdsNotaServicoPERC_COFINS.AsFloat;
        vVlr_Pis     := fDMCadNotaServico.cdsNotaServicoVLR_PIS_CALC.AsFloat;
        vVlr_Cofins  := fDMCadNotaServico.cdsNotaServicoVLR_COFINS_CALC.AsFloat;
      end
      else
      begin
        vPerc_Pis    := fDMCadNotaServico.cdsFilialPERC_PIS.AsFloat;
        vPerc_Cofins := fDMCadNotaServico.cdsFilialPERC_COFINS.AsFloat;
        vVlr_Pis     := fDMCadNotaServico.cdsNotaServicoVLR_PIS.AsFloat;
        vVlr_Cofins  := fDMCadNotaServico.cdsNotaServicoVLR_COFINS.AsFloat;
      end;

      fDMCadNotaServico.cdsNotaServico_Itens.First;
      vID_Mov := fDMMovimento.fnc_Gravar_Movimento(fDMCadNotaServico.cdsNotaServicoID_MOVIMENTO.AsInteger,
                                                   fDMCadNotaServico.cdsNotaServicoFILIAL.AsInteger,0,
                                                   fDMCadNotaServico.cdsNotaServicoID_SERVICO.AsInteger,
                                                   fDMCadNotaServico.cdsNotaServico_ItensID_SERVICO_INT.AsInteger,
                                                   fDMCadNotaServico.cdsNotaServicoID.AsInteger,0,
                                                   fDMCadNotaServico.cdsNotaServicoID_CLIENTE.AsInteger,0,
                                                   fDMCadNotaServico.cdsNotaServicoNUMNOTA.AsInteger,
                                                   fDMCadNotaServico.cdsNotaServicoNUMRPS.AsInteger,'NSE',
                                                   fDMCadNotaServico.cdsNotaServicoSERIE.AsString,'S','NSE',
                                                   fDMCadNotaServico.cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat,
                                                   fDMCadNotaServico.cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat,0,0,0,0,0,
                                                   fDMCadNotaServico.cdsNotaServicoVLR_ISS.AsFloat,
                                                   fDMCadNotaServico.cdsNotaServicoVLR_IR.AsFloat,0,0,
                                                   //fDMCadNotaServico.cdsNotaServicoVLR_PIS.AsFloat,
                                                   vVlr_Pis,
                                                   //fDMCadNotaServico.cdsNotaServicoVLR_COFINS.AsFloat,
                                                   vVlr_Cofins,
                                                   fDMCadNotaServico.cdsNotaServicoVLR_DUPLICATA.AsFloat,
                                                   fDMCadNotaServico.cdsNotaServicoVLR_CSLL.AsFloat,
                                                   0,0,0,0,fDMCadNotaServico.cdsNotaServicoVLR_ISS_RETIDO.AsFloat,
                                                   fDMCadNotaServico.cdsNotaServicoVLR_CSRF.AsFloat,
                                                   fDMCadNotaServico.cdsNotaServicoBASE_INSS.AsFloat,
                                                   fDMCadNotaServico.cdsNotaServicoBASE_CALCULO.AsFloat,0,0,0,0,0,0,0,
                                                   //fDMCadNotaServico.cdsFilialPERC_PIS.AsFloat,
                                                   vPerc_Pis,
                                                   //fDMCadNotaServico.cdsFilialPERC_COFINS.AsFloat,
                                                   vPerc_Cofins,
                                                   fDMCadNotaServico.cdsNotaServicoPERC_ALIQUOTA.AsFloat,
                                                   fDMCadNotaServico.cdsNotaServicoVLR_LIQUIDO_NFSE.AsFloat,0,
                                                   vCancelada,'N','UN', vMotivo_CD,
                                                   fDMCadNotaServico.qServicoNOME.AsString,
                                                   fDMCadNotaServico.qServicoCODIGO.AsString,
                                                   fDMCadNotaServico.cdsNotaServicoDTEMISSAO_CAD.AsDateTime,
                                                   fDMCadNotaServico.cdsNotaServicoDTEMISSAO_CAD.AsDateTime,'',
                                                   fDMCadNotaServico.cdsNotaServicoTIPO_PRAZO.AsString,
                                                   fDMCadNotaServico.cdsNotaServicoID_CONDPGTO.AsInteger,0,
                                                   fDMCadNotaServico.cdsNotaServicoID_VENDEDOR.AsInteger,0,
                                                   fDMCadNotaServico.cdsNotaServicoPERC_COMISSAO.AsFloat,0,0, cTerminal,0,
                                                   fDMCadNotaServico.cdsNotaServicoRETEM_PISCOFINS.AsString);

      if vID_Mov <> fDMCadNotaServico.cdsNotaServicoID_MOVIMENTO.AsInteger then
      begin
        fDMCadNotaServico.cdsNotaServico.Edit;
        fDMCadNotaServico.cdsNotaServicoID_MOVIMENTO.AsInteger := vID_Mov;
        fDMCadNotaServico.cdsNotaServico.Post;
        fDMCadNotaServico.cdsNotaServico.ApplyUpdates(0);
      end;
    end;

    fDMCadNotaServico.cdsNotaServico.Next;
  end;

  RzLabel2.Caption := 'Processo de inclusão de notas finalizado...';
  RzLabel2.Refresh;

  MessageDlg('*** Notas de serviço Carregadas no Movimento!', mtInformation, [mbOk], 0);
end;

procedure TfrmGerarMovimento.prc_Le_NotaFiscal_Ref;
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
      sds.CommandText   := 'SELECT ID FROM NOTAFISCAL WHERE NFECHAVEACESSO = ' + QuotedStr(fDMCadNotaFiscal.cdsNotaFiscal_RefNFECHAVEACESSO_REF.AsString);
      sds.Open;
      if not(sds.IsEmpty) and (sds.FieldByName('ID').AsInteger > 0) then
      begin
        fDMCadNotaFiscal.Excluir_Duplicata(sds.FieldByName('ID').AsInteger);
        fDMCadNotaFiscal.Excluir_ExtComissao(sds.FieldByName('ID').AsInteger);
        fDMCadNotaFiscal.prc_Excluir_Financeiro(sds.FieldByName('ID').AsInteger);
        fDMCadNotaFiscal.prc_Cancelar_Movimento(sds.FieldByName('ID').AsInteger);
      end;
    end;
    fDMCadNotaFiscal.cdsNotaFiscal_Ref.Next;
  end;
  FreeAndNil(sds);
end;

procedure TfrmGerarMovimento.btnCupomFiscalClick(Sender: TObject);
var
  vID_Mov: Integer;
  sds: TSQLDataSet;
  vCancelada: String;
  vMotivo_CD: String;
begin
  if MessageDlg('Deseja carregar os cupons para o movimento?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  RzLabel1.Visible := False;
  RzLabel2.Visible := False;
  RzLabel3.Visible := True;
  RzLabel3.Caption := 'Aguarde, excluindo movimento...';
  RzLabel3.Refresh;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'DELETE FROM MOVIMENTO WHERE TIPO_REG = ' + QuotedStr('CFI')
                     + ' AND DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date))
                     + ' AND DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  sds.ExecSQL;

  FreeAndNil(sds);

  RzLabel3.Caption := 'Aguarde, incluindo cupons no movimento';
  RzLabel3.Refresh;

  cdsCupomFiscal.Close;
  sdsCupomFiscal.CommandText := ctCupomFiscal
                              + ' AND DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date))
                              + ' AND DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  cdsCupomFiscal.Open;
  cdsCupomFiscal_Itens.Close;
  cdsCupomFiscal_Itens.Open;
  cdsCupomFiscal.First;

  RzProgressStatus1.TotalParts    := cdsCupomFiscal.RecordCount;
  RzProgressStatus1.PartsComplete := 0;
  RzProgressStatus1.Percent       := 0;

  cdsCupomFiscal.IndexFieldNames := 'ID';

  while not cdsCupomFiscal.Eof do
  begin
    RzProgressStatus1.PartsComplete := RzProgressStatus1.PartsComplete + 1;
    if not(qFilial.Active) or (qFilialID.AsInteger <> cdsCupomFiscalFILIAL.AsInteger) then
    begin
      qFilial.Close;
      qFilial.ParamByName('ID').AsInteger := cdsCupomFiscalFILIAL.AsInteger;
      qFilial.Open;
    end;
    vMotivo_CD := '';
    cdsCupomFiscal_Itens.First;
    while not cdsCupomFiscal_Itens.Eof do
    begin
      qProduto.Close;
      qProduto.ParamByName('ID').AsInteger := cdsCupomFiscal_ItensID_PRODUTO.AsInteger;
      qProduto.Open;
      if qProdutoTIPO_REG.AsString <> 'N' then
      begin
        vID_Mov := fDMMovimento.fnc_Gravar_Movimento(cdsCupomFiscal_ItensID_MOVIMENTO.AsInteger,
                                                     cdsCupomFiscalFILIAL.AsInteger,
                                                     cdsCupomFiscal_ItensITEM.AsInteger,
                                                     cdsCupomFiscal_ItensID_PRODUTO.AsInteger,0,
                                                     cdsCupomFiscal_ItensID.AsInteger,
                                                     cdsCupomFiscal_ItensID_CFOP.AsInteger,
                                                     cdsCupomFiscalID_CLIENTE.AsInteger,
                                                     0,
                                                     cdsCupomFiscalNUMCUPOM.AsInteger,0,'CFI',
                                                     'CFI',//Série
                                                     'S','CFI',
                                                     cdsCupomFiscal_ItensVLR_UNITARIO.AsFloat,
                                                     cdsCupomFiscal_ItensVLR_TOTAL.AsFloat,
                                                     0,
                                                     0,
                                                     cdsCupomFiscal_ItensVLR_ICMS.AsFloat,
                                                     0,
                                                     0,0,0,
                                                     0,0,
                                                     0,
                                                     0,
                                                     cdsCupomFiscal_ItensVLR_TOTAL.AsFloat,0,
                                                     0,
                                                     0,
                                                     0,
                                                     0,
                                                     0,0,0,0,cdsCupomFiscal_ItensBASE_ICMS.AsFloat,
                                                     0,
                                                     0,
                                                     cdsCupomFiscal_ItensQTD.AsFloat,
                                                     0,
                                                     cdsCupomFiscal_ItensPERC_ICMS.AsFloat,
                                                     0,
                                                     0,
                                                     0,0,0,0,
                                                     cdsCupomFiscal_ItensCANCELADO.AsString,
                                                     '',
                                                     cdsCupomFiscal_ItensUNIDADE.AsString,
                                                     '',
                                                     qProdutoNOME.AsString,
                                                     qProdutoREFERENCIA.AsString,
                                                     cdsCupomFiscalDTEMISSAO.AsDateTime,
                                                     cdsCupomFiscalDTEMISSAO.AsDateTime,
                                                     cdsCupomFiscal_ItensTAMANHO.AsString,
                                                     '',
                                                     cdsCupomFiscalID_CONDPGTO.AsInteger,0,
                                                     cdsCupomFiscalID_VENDEDOR.AsInteger,0,
                                                     cdsCupomFiscalPERC_VENDEDOR.AsFloat,0,0,
                                                     cdsCupomFiscalTERMINAL_ID.AsInteger,0,'N');
      end;
      if (cdsCupomFiscal_ItensID_MOVIMENTO.AsInteger <> vID_Mov) then
      begin
        cdsCupomFiscal_Itens.Edit;
        cdsCupomFiscal_ItensID_MOVIMENTO.AsInteger  := vID_Mov;
        cdsCupomFiscal_Itens.Post;
      end;
      cdsCupomFiscal_Itens.Next;
    end;
    cdsCupomFiscal.ApplyUpdates(0);
    cdsCupomFiscal.Next;
  end;
  RzLabel3.Caption := 'Processo de inclusão de cupons finalizado...';
  RzLabel3.Refresh;

  MessageDlg('*** Cupons Carregados no Movimento!', mtInformation, [mbOk], 0);
end;

procedure TfrmGerarMovimento.NxButton2Click(Sender: TObject);
var
  vID_Mov: Integer;
  sds: TSQLDataSet;
  vCancelada: String;
  vMotivo_CD: String;
begin
  if MessageDlg('Deseja carregar as notas de serviço para o movimento?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  RzLabel1.Visible := False;
  RzLabel2.Visible := False;
  RzLabel3.Visible := False;
  RzLabel4.Visible := True;
  RzLabel4.Caption := 'Aguarde, excluindo movimento...';
  RzLabel4.Refresh;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.CommandText   := 'DELETE FROM MOVIMENTO WHERE TIPO_REG = ' + QuotedStr('REC')
                     + ' AND DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date))
                     + ' AND DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  sds.ExecSQL;

  FreeAndNil(sds);

  RzLabel4.Caption := 'Aguarde, incluindo notas no movimento';
  RzLabel4.Refresh;

  fDMCadRecibo.cdsFilial.Close;
  fDMCadRecibo.cdsFilial.Open;
  fDMCadRecibo.cdsRecibo.Close;
  fDMCadRecibo.sdsRecibo.CommandText := fDMCadRecibo.ctCommand
                                             + ' WHERE DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date))
                                             + ' AND DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  fDMCadRecibo.cdsRecibo.Open;
  fDMCadRecibo.cdsRecibo_Itens.Close;
  fDMCadRecibo.cdsRecibo_Itens.Open;
  fDMCadRecibo.cdsRecibo.First;

  RzProgressStatus1.TotalParts    := fDMCadRecibo.cdsRecibo.RecordCount;
  RzProgressStatus1.PartsComplete := 0;
  RzProgressStatus1.Percent       := 0;

  while not fDMCadRecibo.cdsRecibo.Eof do
  begin
    RzProgressStatus1.PartsComplete := RzProgressStatus1.PartsComplete + 1;
    if fDMCadRecibo.cdsFilialID.AsInteger <> fDMCadRecibo.cdsReciboFILIAL.AsInteger then
      fDMCadRecibo.cdsFilial.Locate('ID',fDMCadRecibo.cdsReciboFILIAL.AsInteger,[loCaseInsensitive]);

    vCancelada := 'N';
    fDMCadRecibo.cdsRecibo_Itens.First;
    while not fDMCadRecibo.cdsRecibo_Itens.Eof do
    begin
      fDMCadRecibo.qServico_Int.Close;
      fDMCadRecibo.qServico_Int.ParamByName('ID').AsInteger := fDMCadRecibo.cdsRecibo_ItensID_SERVICO_INT.AsInteger;
      fDMCadRecibo.qServico_Int.Open;

      vID_Mov := fDMMovimento.fnc_Gravar_Movimento(fDMCadRecibo.cdsRecibo_ItensID_MOVIMENTO.AsInteger,
                                                   fDMCadRecibo.cdsReciboFILIAL.AsInteger,fDMCadRecibo.cdsRecibo_ItensITEM.AsInteger,
                                                   0,fDMCadRecibo.cdsRecibo_ItensID_SERVICO_INT.AsInteger,
                                                   0,0,fDMCadRecibo.cdsReciboID_CLIENTE.AsInteger,0,
                                                   fDMCadRecibo.cdsReciboNUM_RECIBO.AsInteger,0,'REC','REC','S','REC',
                                                   fDMCadRecibo.cdsRecibo_ItensVLR_UNITARIO.AsFloat,
                                                   fDMCadRecibo.cdsRecibo_ItensVLR_TOTAL.AsFloat,0,0,0,0,0,
                                                   0,0,0,0,0,0,fDMCadRecibo.cdsRecibo_ItensVLR_TOTAL.AsFloat,
                                                   0,0,0,0,0,0,0,0,0,0,0,0,fDMCadRecibo.cdsRecibo_ItensQTD.AsFloat,0,0,0,0,0,0,
                                                   fDMCadRecibo.cdsRecibo_ItensVLR_TOTAL.AsFloat,0,
                                                   'N','N','UN','',
                                                   fDMCadRecibo.qServico_IntNOME.AsString,
                                                   'SER.'+fDMCadRecibo.cdsRecibo_ItensID_SERVICO_INT.AsString,
                                                   fDMCadRecibo.cdsReciboDTEMISSAO.AsDateTime,
                                                   fDMCadRecibo.cdsReciboDTEMISSAO.AsDateTime,'',
                                                   fDMCadRecibo.cdsReciboTIPO_PRAZO.AsString,
                                                   fDMCadRecibo.cdsReciboID_CONDPGTO.AsInteger,
                                                   fDMCadRecibo.cdsReciboID.AsInteger,
                                                   fDMCadRecibo.cdsReciboID_VENDEDOR.AsInteger,0,
                                                   fDMCadRecibo.cdsReciboPERC_COMISSAO.AsFloat,0,0, cTerminal,0,'N');

      if vID_Mov <> fDMCadRecibo.cdsReciboID_MOVIMENTO.AsInteger then
      begin
        fDMCadRecibo.cdsRecibo_Itens.Edit;
        fDMCadRecibo.cdsRecibo_ItensID_MOVIMENTO.AsInteger := vID_Mov;
        fDMCadRecibo.cdsRecibo_Itens.Post;
        fDMCadRecibo.cdsRecibo_Itens.ApplyUpdates(0);
      end;

      fDMCadRecibo.cdsRecibo_Itens.Next;
    end;

    fDMCadRecibo.cdsRecibo.Next;
  end;

  RzLabel2.Caption := 'Processo de inclusão de notas finalizado...';
  RzLabel2.Refresh;

  MessageDlg('*** Recibos Carregados no Movimento!', mtInformation, [mbOk], 0);
end;

procedure TfrmGerarMovimento.btnGravar_Ult_FatClick(Sender: TObject);
var
  fDMCadPessoa: TDMCadPessoa;
  sds: TSQLDataSet;
begin
  fDMCadPessoa  := TDMCadPessoa.Create(Self);
  fDMCadPessoa.cdsPessoa_Consulta.Close;
  fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.ctConsulta
                                               + ' WHERE P.TP_CLIENTE = ' + QuotedStr('S');
  fDMCadPessoa.cdsPessoa_Consulta.Open;
  RzProgressStatus1.TotalParts    := fDMCadPessoa.cdsPessoa_Consulta.RecordCount;
  RzProgressStatus1.PartsComplete := 0;
  RzProgressStatus1.Percent       := 0;

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;

  fDMCadPessoa.cdsPessoa_Consulta.First;

  while not fDMCadPessoa.cdsPessoa_Consulta.Eof do
  begin
    RzProgressStatus1.PartsComplete := RzProgressStatus1.PartsComplete + 1;
    fDMCadPessoa.prc_Localizar(fDMCadPessoa.cdsPessoa_ConsultaCODIGO.AsInteger);
    if not fDMCadPessoa.cdsPessoa.IsEmpty then
    begin
      sds.Close;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := 'SELECT first 1 sum(ni.vlr_total) VLR_TOTAL, sum(ni.qtd) QTD_PRODUTO, NT.dtemissao FROM NOTAFISCAL NT '
                         + ' INNER JOIN NOTAFISCAL_ITENS NI ON NT.id = NI.id '
                         + ' INNER JOIN tab_cfop CFOP ON NI.id_cfop = CFOP.id '
                         + ' WHERE NT.TIPO_REG = ' + QuotedStr('NTS')
                         + '   AND NT.TIPO_NOTA = ' + QuotedStr('S')
                         + '   AND NT.CANCELADA = '  + QuotedStr('N')
                         + '   AND NT.NFEDENEGADA = ' + QuotedStr('N')
                         + '   AND CFOP.faturamento = ' + QuotedStr('S')
                         + '   AND NT.ID_CLIENTE = ' + fDMCadPessoa.cdsPessoaCODIGO.AsString
                         + ' group by NT.dtemissao, NT.id '
                         + ' ORDER BY NT.dtemissao desc, NT.id desc ';
      sds.Open;
      fDMCadPessoa.cdsPessoa.Edit;
      if not sds.IsEmpty then
      begin
        fDMCadPessoa.cdsPessoaDTNOTA.AsDateTime           := sds.FieldByName('DTEMISSAO').AsDateTime;
        fDMCadPessoa.cdsPessoaVLR_ULT_FATURAMENTO.AsFloat := StrToFloat(FormatFloat('0.00',sds.FieldByName('VLR_TOTAL').AsFloat));
        fDMCadPessoa.cdsPessoaQTD_ULT_FATURAMENTO.AsFloat := StrToFloat(FormatFloat('0.0000',sds.FieldByName('QTD_PRODUTO').AsFloat));
      end
      else
      begin
        fDMCadPessoa.cdsPessoaDTNOTA.Clear;
        fDMCadPessoa.cdsPessoaVLR_ULT_FATURAMENTO.Clear;
        fDMCadPessoa.cdsPessoaQTD_ULT_FATURAMENTO.Clear;
      end;
      fDMCadPessoa.cdsPessoa.Post;
      fDMCadPessoa.cdsPessoa.ApplyUpdates(0);
    end;
    fDMCadPessoa.cdsPessoa_Consulta.Next;
  end;
  FreeAndNil(sds);
  FreeAndNil(fDMCadPessoa);
  MessageDlg('*** Último faturamento gravado no cliente!', mtConfirmation, [mbOk], 0);
end;

procedure TfrmGerarMovimento.btnGravar_MetasClick(Sender: TObject);
var
  sds: TSQLDataSet;
  ano, mes: Word;
  vFlag: Boolean;
begin
  if (DateEdit1.Date <= 10) or (DateEdit2.Date <= 10) then
  begin
    MessageDlg('*** Data não informada!', mtError, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja carregar as metas?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  ano := YearOf(DateEdit1.Date);
  mes := MonthOf(DateEdit1.Date);

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;

  vFlag := False;
  while not vFlag do
  begin
    if (ano =  YearOf(DateEdit2.Date)) and (mes = MonthOf(DateEdit2.Date)) then
      vFlag := True;
    sds.Close;
    sds.CommandText   := 'DELETE FROM METAS_ACUM WHERE ANO = ' + IntToStr(ano) + ' AND MES = ' + IntToStr(mes);
    sds.ExecSQL;
    mes := mes + 1;
    if mes > 12 then
    begin
      mes := 1;
      ano := ano + 1;
    end;
  end;
  FreeAndNil(sds);

  cdsPedido.Close;
  sdsPedido.ParamByName('DATA1').AsDate := DateEdit1.Date;
  sdsPedido.ParamByName('DATA2').AsDate := DateEdit2.Date;
  cdsPedido.Open;
  cdsPedido.First;
  while not cdsPedido.Eof do
  begin
    cdsMetas_Acum.Close;
    sdsMetas_Acum.ParamByName('ID_VENDEDOR').AsInteger := cdsPedidoID_VENDEDOR.AsInteger;
    sdsMetas_Acum.ParamByName('ANO').AsInteger         := YearOf(cdsPedidoDTEMISSAO.AsDateTime);
    sdsMetas_Acum.ParamByName('MES').AsInteger         := MonthOf(cdsPedidoDTEMISSAO.AsDateTime);
    cdsMetas_Acum.Open;
    if not cdsMetas_Acum.IsEmpty then
      cdsMetas_Acum.Edit
    else
    begin
      cdsMetas_Acum.Insert;
      cdsMetas_AcumID_VENDEDOR.AsInteger := cdsPedidoID_VENDEDOR.AsInteger;
      cdsMetas_AcumANO.AsInteger         := YearOf(cdsPedidoDTEMISSAO.AsDateTime);
      cdsMetas_AcumMES.AsInteger         := MonthOf(cdsPedidoDTEMISSAO.AsDateTime);
      cdsMetas_AcumANO_MES.AsString      := FormatFloat('0000',YearOf(cdsPedidoDTEMISSAO.AsDateTime)) +  FormatFloat('00',MonthOf(cdsPedidoDTEMISSAO.AsDateTime));
      cdsMetas_AcumVALOR.AsFloat         := 0;
    end;
    cdsMetas_AcumVALOR.AsFloat := StrToFloat(FormatFloat('0.00',cdsMetas_AcumVALOR.AsFloat +
                                            (cdsPedidoVLR_ITENS.AsFloat - cdsPedidoVLR_DESCONTO.AsFloat - cdsPedidoVLR_DESCONTO_ITEM.AsFloat)));
    cdsMetas_Acum.Post;
    cdsMetas_Acum.ApplyUpdates(0);

    cdsPedido.Next;
  end;
  MessageDlg('*** Metas gravadas!', mtError, [mbOk], 0);
end;

procedure TfrmGerarMovimento.FormCreate(Sender: TObject);
begin
  ctNota := sdsNota.CommandText;
end;

end.
