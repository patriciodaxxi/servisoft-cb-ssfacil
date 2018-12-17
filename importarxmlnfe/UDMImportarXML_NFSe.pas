unit UDMImportarXML_NFSe;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, xmldom,
  Xmlxform;

type
  TDMImportarXML_NFSe = class(TDataModule)
    sdsCidade: TSQLDataSet;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    dsCidade: TDataSource;
    sdsCidadeID: TIntegerField;
    sdsCidadeNOME: TStringField;
    sdsCidadeUF: TStringField;
    sdsCidadeCODMUNICIPIO: TStringField;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
    cdsCidadeUF: TStringField;
    cdsCidadeCODMUNICIPIO: TStringField;
    sdsFornecedor: TSQLDataSet;
    dspFornecedor: TDataSetProvider;
    cdsFornecedor: TClientDataSet;
    dsFornecedor: TDataSource;
    sdsFornecedorCODIGO: TIntegerField;
    sdsFornecedorNOME: TStringField;
    sdsFornecedorFANTASIA: TStringField;
    sdsFornecedorENDERECO: TStringField;
    sdsFornecedorCOMPLEMENTO_END: TStringField;
    sdsFornecedorNUM_END: TStringField;
    sdsFornecedorBAIRRO: TStringField;
    sdsFornecedorID_CIDADE: TIntegerField;
    sdsFornecedorCIDADE: TStringField;
    sdsFornecedorUF: TStringField;
    sdsFornecedorCEP: TStringField;
    sdsFornecedorDDDFONE1: TIntegerField;
    sdsFornecedorTELEFONE1: TStringField;
    sdsFornecedorDDDFONE2: TIntegerField;
    sdsFornecedorTELEFONE2: TStringField;
    sdsFornecedorDDDFAX: TIntegerField;
    sdsFornecedorFAX: TStringField;
    sdsFornecedorPESSOA: TStringField;
    sdsFornecedorCNPJ_CPF: TStringField;
    sdsFornecedorINSCR_EST: TStringField;
    sdsFornecedorENDERECO_ENT: TStringField;
    sdsFornecedorCOMPLEMENTO_END_ENT: TStringField;
    sdsFornecedorNUM_END_ENT: TStringField;
    sdsFornecedorBAIRRO_ENT: TStringField;
    sdsFornecedorID_CIDADE_ENT: TIntegerField;
    sdsFornecedorCIDADE_ENT: TStringField;
    sdsFornecedorCEP_ENT: TStringField;
    sdsFornecedorUF_ENT: TStringField;
    sdsFornecedorPESSOA_ENT: TStringField;
    sdsFornecedorCNPJ_CPF_ENT: TStringField;
    sdsFornecedorINSC_EST_ENT: TStringField;
    sdsFornecedorENDERECO_PGTO: TStringField;
    sdsFornecedorCOMPLEMENTO_END_PGTO: TStringField;
    sdsFornecedorNUM_END_PGTO: TStringField;
    sdsFornecedorBAIRRO_PGTO: TStringField;
    sdsFornecedorID_CIDADE_PGTO: TIntegerField;
    sdsFornecedorCIDADE_PGTO: TStringField;
    sdsFornecedorCEP_PGTO: TStringField;
    sdsFornecedorUF_PGTO: TStringField;
    sdsFornecedorUSUARIO: TStringField;
    sdsFornecedorDTCADASTRO: TDateField;
    sdsFornecedorHRCADASTRO: TTimeField;
    sdsFornecedorOBS: TMemoField;
    sdsFornecedorCAIXAPOSTAL: TStringField;
    sdsFornecedorRG: TStringField;
    sdsFornecedorID_VENDEDOR: TIntegerField;
    sdsFornecedorID_CONDPGTO: TIntegerField;
    sdsFornecedorID_CONTABOLETO: TIntegerField;
    sdsFornecedorID_TRANSPORTADORA: TIntegerField;
    sdsFornecedorID_TIPOCOBRANCA: TIntegerField;
    sdsFornecedorID_REDESPACHO: TIntegerField;
    sdsFornecedorID_PAIS: TIntegerField;
    sdsFornecedorID_REGIME_TRIB: TIntegerField;
    sdsFornecedorPERC_COMISSAO: TFloatField;
    sdsFornecedorDDD_ENT: TIntegerField;
    sdsFornecedorFONE_ENT: TStringField;
    sdsFornecedorDDD_PGTO: TIntegerField;
    sdsFornecedorFONE_PGTO: TStringField;
    sdsFornecedorINATIVO: TStringField;
    sdsFornecedorHOMEPAGE: TStringField;
    sdsFornecedorTIPO_FRETE: TStringField;
    sdsFornecedorNOME_ENTREGA: TStringField;
    sdsFornecedorEMAIL_NFE: TStringField;
    sdsFornecedorEMAIL_PGTO: TStringField;
    sdsFornecedorEMAIL_NFE2: TStringField;
    sdsFornecedorPESSOA_PGTO: TStringField;
    sdsFornecedorCNPJ_CPG_PGTO: TStringField;
    sdsFornecedorINSC_EST_PGTO: TStringField;
    sdsFornecedorUF_PLACA: TStringField;
    sdsFornecedorPLACA: TStringField;
    sdsFornecedorTP_CLIENTE: TStringField;
    sdsFornecedorTP_FORNECEDOR: TStringField;
    sdsFornecedorTP_TRANSPORTADORA: TStringField;
    sdsFornecedorTP_VENDEDOR: TStringField;
    cdsFornecedorCODIGO: TIntegerField;
    cdsFornecedorNOME: TStringField;
    cdsFornecedorFANTASIA: TStringField;
    cdsFornecedorENDERECO: TStringField;
    cdsFornecedorCOMPLEMENTO_END: TStringField;
    cdsFornecedorNUM_END: TStringField;
    cdsFornecedorBAIRRO: TStringField;
    cdsFornecedorID_CIDADE: TIntegerField;
    cdsFornecedorCIDADE: TStringField;
    cdsFornecedorUF: TStringField;
    cdsFornecedorCEP: TStringField;
    cdsFornecedorDDDFONE1: TIntegerField;
    cdsFornecedorTELEFONE1: TStringField;
    cdsFornecedorDDDFONE2: TIntegerField;
    cdsFornecedorTELEFONE2: TStringField;
    cdsFornecedorDDDFAX: TIntegerField;
    cdsFornecedorFAX: TStringField;
    cdsFornecedorPESSOA: TStringField;
    cdsFornecedorCNPJ_CPF: TStringField;
    cdsFornecedorINSCR_EST: TStringField;
    cdsFornecedorENDERECO_ENT: TStringField;
    cdsFornecedorCOMPLEMENTO_END_ENT: TStringField;
    cdsFornecedorNUM_END_ENT: TStringField;
    cdsFornecedorBAIRRO_ENT: TStringField;
    cdsFornecedorID_CIDADE_ENT: TIntegerField;
    cdsFornecedorCIDADE_ENT: TStringField;
    cdsFornecedorCEP_ENT: TStringField;
    cdsFornecedorUF_ENT: TStringField;
    cdsFornecedorPESSOA_ENT: TStringField;
    cdsFornecedorCNPJ_CPF_ENT: TStringField;
    cdsFornecedorINSC_EST_ENT: TStringField;
    cdsFornecedorENDERECO_PGTO: TStringField;
    cdsFornecedorCOMPLEMENTO_END_PGTO: TStringField;
    cdsFornecedorNUM_END_PGTO: TStringField;
    cdsFornecedorBAIRRO_PGTO: TStringField;
    cdsFornecedorID_CIDADE_PGTO: TIntegerField;
    cdsFornecedorCIDADE_PGTO: TStringField;
    cdsFornecedorCEP_PGTO: TStringField;
    cdsFornecedorUF_PGTO: TStringField;
    cdsFornecedorUSUARIO: TStringField;
    cdsFornecedorDTCADASTRO: TDateField;
    cdsFornecedorHRCADASTRO: TTimeField;
    cdsFornecedorOBS: TMemoField;
    cdsFornecedorCAIXAPOSTAL: TStringField;
    cdsFornecedorRG: TStringField;
    cdsFornecedorID_VENDEDOR: TIntegerField;
    cdsFornecedorID_CONDPGTO: TIntegerField;
    cdsFornecedorID_CONTABOLETO: TIntegerField;
    cdsFornecedorID_TRANSPORTADORA: TIntegerField;
    cdsFornecedorID_TIPOCOBRANCA: TIntegerField;
    cdsFornecedorID_REDESPACHO: TIntegerField;
    cdsFornecedorID_PAIS: TIntegerField;
    cdsFornecedorID_REGIME_TRIB: TIntegerField;
    cdsFornecedorPERC_COMISSAO: TFloatField;
    cdsFornecedorDDD_ENT: TIntegerField;
    cdsFornecedorFONE_ENT: TStringField;
    cdsFornecedorDDD_PGTO: TIntegerField;
    cdsFornecedorFONE_PGTO: TStringField;
    cdsFornecedorINATIVO: TStringField;
    cdsFornecedorHOMEPAGE: TStringField;
    cdsFornecedorTIPO_FRETE: TStringField;
    cdsFornecedorNOME_ENTREGA: TStringField;
    cdsFornecedorEMAIL_NFE: TStringField;
    cdsFornecedorEMAIL_PGTO: TStringField;
    cdsFornecedorEMAIL_NFE2: TStringField;
    cdsFornecedorPESSOA_PGTO: TStringField;
    cdsFornecedorCNPJ_CPG_PGTO: TStringField;
    cdsFornecedorINSC_EST_PGTO: TStringField;
    cdsFornecedorUF_PLACA: TStringField;
    cdsFornecedorPLACA: TStringField;
    cdsFornecedorTP_CLIENTE: TStringField;
    cdsFornecedorTP_FORNECEDOR: TStringField;
    cdsFornecedorTP_TRANSPORTADORA: TStringField;
    cdsFornecedorTP_VENDEDOR: TStringField;
    cdsNFSe: TClientDataSet;
    cdsNFSeNumero: TIntegerField;
    cdsNFSeCodigoVerificacao: TStringField;
    cdsNFSeDataEmissao: TStringField;
    cdsNFSeIdentificacaoRps: TADTField;
    cdsNFSeIdentificacaoRpsNumero1: TIntegerField;
    cdsNFSeIdentificacaoRpsSerie: TStringField;
    cdsNFSeIdentificacaoRpsTipo: TIntegerField;
    cdsNFSeDataEmissaoRps: TStringField;
    cdsNFSeNaturezaOperacao: TIntegerField;
    cdsNFSeRegimeEspecialTributacao: TIntegerField;
    cdsNFSeOptanteSimplesNacional: TIntegerField;
    cdsNFSeIncentivadorCultural: TIntegerField;
    cdsNFSeCompetencia: TStringField;
    cdsNFSeOutrasInformacoes: TStringField;
    cdsNFSeServico: TADTField;
    cdsNFSeServicoValores: TADTField;
    cdsNFSeServicoValoresValorServicos: TFloatField;
    cdsNFSeServicoValoresValorDeducoes: TFloatField;
    cdsNFSeServicoValoresValorPis: TFloatField;
    cdsNFSeServicoValoresValorCofins: TFloatField;
    cdsNFSeServicoValoresValorInss: TFloatField;
    cdsNFSeServicoValoresValorIr: TFloatField;
    cdsNFSeServicoValoresValorCsll: TFloatField;
    cdsNFSeServicoValoresIssRetido: TIntegerField;
    cdsNFSeServicoValoresValorIss: TFloatField;
    cdsNFSeServicoValoresOutrasRetencoes: TFloatField;
    cdsNFSeServicoValoresBaseCalculo: TFloatField;
    cdsNFSeServicoValoresAliquota: TFloatField;
    cdsNFSeServicoValoresValorLiquidoNfse: TFloatField;
    cdsNFSeServicoValoresValorIssRetido: TFloatField;
    cdsNFSeServicoValoresDescontoCondicionado: TFloatField;
    cdsNFSeServicoValoresDescontoIncondicionado: TFloatField;
    cdsNFSeServicoItemListaServico: TStringField;
    cdsNFSeServicoCodigoCnae: TIntegerField;
    cdsNFSeServicoCodigoTributacaoMunicipio: TStringField;
    cdsNFSeServicoDiscriminacao: TStringField;
    cdsNFSeServicoMunicipioPrestacaoServico: TIntegerField;
    cdsNFSeNfseSubstituida: TIntegerField;
    cdsNFSeValorCredito: TFloatField;
    cdsNFSePrestadorServico: TADTField;
    cdsNFSePrestadorServicoIdentificacaoPrestador: TADTField;
    cdsNFSePrestadorServicoIdentificacaoPrestadorCpfCnpj: TADTField;
    cdsNFSePrestadorServicoIdentificacaoPrestadorCpfCnpjCpf: TStringField;
    cdsNFSePrestadorServicoIdentificacaoPrestadorCpfCnpjCnpj: TStringField;
    cdsNFSePrestadorServicoIdentificacaoPrestadorInscricaoMunicipal: TStringField;
    cdsNFSePrestadorServicoRazaoSocial: TStringField;
    cdsNFSePrestadorServicoNomeFantasia: TStringField;
    cdsNFSePrestadorServicoEndereco: TADTField;
    cdsNFSePrestadorServicoEnderecoEndereco: TStringField;
    cdsNFSePrestadorServicoEnderecoNumero2: TStringField;
    cdsNFSePrestadorServicoEnderecoComplemento: TStringField;
    cdsNFSePrestadorServicoEnderecoBairro: TStringField;
    cdsNFSePrestadorServicoEnderecoCidade: TIntegerField;
    cdsNFSePrestadorServicoEnderecoEstado: TStringField;
    cdsNFSePrestadorServicoEnderecoCep: TIntegerField;
    cdsNFSePrestadorServicoContato: TADTField;
    cdsNFSePrestadorServicoContatoTelefone: TStringField;
    cdsNFSePrestadorServicoContatoEmail: TStringField;
    cdsNFSeTomadorServico: TADTField;
    cdsNFSeTomadorServicoIdentificacaoTomador: TADTField;
    cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpj: TADTField;
    cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpjCpf: TStringField;
    cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpjCnpj: TStringField;
    cdsNFSeTomadorServicoIdentificacaoTomadorInscricaoMunicipal: TStringField;
    cdsNFSeTomadorServicoRazaoSocial: TStringField;
    cdsNFSeTomadorServicoEndereco: TADTField;
    cdsNFSeTomadorServicoEnderecoEndereco: TStringField;
    cdsNFSeTomadorServicoEnderecoNumero2: TStringField;
    cdsNFSeTomadorServicoEnderecoComplemento: TStringField;
    cdsNFSeTomadorServicoEnderecoBairro: TStringField;
    cdsNFSeTomadorServicoEnderecoCidade: TIntegerField;
    cdsNFSeTomadorServicoEnderecoEstado1: TStringField;
    cdsNFSeTomadorServicoEnderecoCep: TIntegerField;
    cdsNFSeTomadorServicoContato: TADTField;
    cdsNFSeTomadorServicoContatoTelefone: TStringField;
    cdsNFSeTomadorServicoContatoEmail: TStringField;
    cdsNFSeIntermediarioServico: TADTField;
    cdsNFSeIntermediarioServicoRazaoSocial: TStringField;
    cdsNFSeIntermediarioServicoCpfCnpj: TADTField;
    cdsNFSeIntermediarioServicoCpfCnpjCpf: TStringField;
    cdsNFSeIntermediarioServicoCpfCnpjCnpj: TStringField;
    cdsNFSeIntermediarioServicoInscricaoMunicipal: TStringField;
    cdsNFSeOrgaoGerador: TADTField;
    cdsNFSeOrgaoGeradorCodigoMunicipio: TIntegerField;
    cdsNFSeOrgaoGeradorUf: TStringField;
    dsNFSe: TDataSource;
    sdsFornecedorINSC_MUNICIPAL: TStringField;
    cdsFornecedorINSC_MUNICIPAL: TStringField;
    cdsCampoBom: TClientDataSet;
    cdsCampoBomversao: TStringField;
    cdsCampoBomcNFSe: TStringField;
    cdsCampoBomnatOp: TStringField;
    cdsCampoBommod: TStringField;
    cdsCampoBomserie: TStringField;
    cdsCampoBomnNFSe: TStringField;
    cdsCampoBomdEmi: TStringField;
    cdsCampoBomdSaiEnt: TStringField;
    cdsCampoBomcMunFG: TStringField;
    cdsCampoBomrefNF: TStringField;
    cdsCampoBomanulada: TStringField;
    cdsCampoBomnotadebito: TStringField;
    cdsCampoBomdescDesconto: TStringField;
    cdsCampoBomdescCondEsp: TStringField;
    cdsCampoBomnumeroArt: TStringField;
    cdsCampoBomnumeroCei: TStringField;
    cdsCampoBomemit_CNPJ: TStringField;
    cdsCampoBomemit_xNome: TStringField;
    cdsCampoBomxFant: TStringField;
    cdsCampoBomend_xLgr: TStringField;
    cdsCampoBomend_nro: TStringField;
    cdsCampoBomend_xCpl: TStringField;
    cdsCampoBomend_xBairro: TStringField;
    cdsCampoBomend_cMun: TStringField;
    cdsCampoBomend_xMun: TStringField;
    cdsCampoBomend_UF: TStringField;
    cdsCampoBomend_CEP: TStringField;
    cdsCampoBomend_cPais: TStringField;
    cdsCampoBomend_xPais: TStringField;
    cdsCampoBomfone: TStringField;
    cdsCampoBomemit_IE: TStringField;
    cdsCampoBomIEST: TStringField;
    cdsCampoBomemit_IM: TStringField;
    cdsCampoBomTomS_CNPJ: TStringField;
    cdsCampoBomTomS_xNome: TStringField;
    cdsCampoBomender_xLgr: TStringField;
    cdsCampoBomender_nro: TStringField;
    cdsCampoBomender_xCpl: TStringField;
    cdsCampoBomender_xBairro: TStringField;
    cdsCampoBomender_cMun: TStringField;
    cdsCampoBomender_xMun: TStringField;
    cdsCampoBomender_UF: TStringField;
    cdsCampoBomender_CEP: TStringField;
    cdsCampoBomender_cPais: TStringField;
    cdsCampoBomender_xPais: TStringField;
    cdsCampoBomTomS_IE: TStringField;
    cdsCampoBomTomS_IM: TStringField;
    cdsCampoBomIMSTS: TStringField;
    cdsCampoBomPraca: TStringField;
    cdsCampoBomvReemb: TStringField;
    cdsCampoBomvBCISS: TStringField;
    cdsCampoBomvISS: TStringField;
    cdsCampoBomvBCSTISS: TStringField;
    cdsCampoBomvSTISS: TStringField;
    cdsCampoBomvServ: TStringField;
    cdsCampoBomvDesc1: TStringField;
    cdsCampoBomvOutro: TStringField;
    cdsCampoBomvtNF: TStringField;
    cdsCampoBomvtLiq: TStringField;
    cdsCampoBomnFat: TStringField;
    cdsCampoBomvOrig: TStringField;
    cdsCampoBomvDesc2: TStringField;
    cdsCampoBomvLiq: TStringField;
    cdsCampoBomnDup: TStringField;
    cdsCampoBomdVenc: TStringField;
    cdsCampoBomvDup: TStringField;
    cdsCampoBomxinf: TMemoField;
    cdsCampoBomdet: TDataSetField;
    cdsCampoBomTomS_CPF: TStringField;
    dsCampoBom: TDataSource;
    dsCBomDet: TDataSource;
    cdsCBomDet: TClientDataSet;
    XMLTransformProvider1: TXMLTransformProvider;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    vMsgErro : String;
    ctCommand_CFOP : String;
    ctCommand_Produto : String;

    procedure prc_Abrir_Produto(ID : Integer ; Referencia : String);

    function fnc_Abrir_Fornecedor(CNPJ : String) : Boolean;
    function fnc_Abrir_Cidade(CodMunicipio : String) : Boolean;

  end;

var
  DMImportarXML_NFSe: TDMImportarXML_NFSe;

implementation

uses DmdDatabase, Forms;

{$R *.dfm}

{ TDMCadCFOP}

procedure TDMImportarXML_NFSe.DataModuleCreate(Sender: TObject);
begin
  //XMLTransformProvider1.TransformRead.TransformationFile := ExtractFilePath(Application.ExeName) + 'nfe_v2.00_ToDp.xtr';

  cdsCidade.Open;

  {ctCommand_CFOP    := sdsCFOP.CommandText;
  ctCommand_Produto := sdsProduto.CommandText;

  qParametros.Close;
  qParametros.ParamByName('ID').AsInteger := 1;
  qParametros.Open;

  cdsTab_CSTICMS.Open;
  cdsCFOP.Open;
  qFilial2.Open;}
end;

function TDMImportarXML_NFSe.fnc_Abrir_Fornecedor(CNPJ: String): Boolean;
begin
  Result := False;
  cdsFornecedor.Close;
  sdsFornecedor.CommandText := 'SELECT * FROM PESSOA '
                             + ' WHERE CNPJ_CPF = ' + QuotedStr(CNPJ);
  cdsFornecedor.Open;
  if not(cdsFornecedor.IsEmpty) or (cdsFornecedorCNPJ_CPF.AsString = CNPJ) then
    Result := True;
end;

procedure TDMImportarXML_NFSe.prc_Abrir_Produto(ID : Integer ; Referencia : String);
begin
  {cdsProduto.Close;
  sdsProduto.CommandText := ctCommand_Produto;
  if trim(Referencia) <> '' then
    sdsProduto.CommandText := sdsProduto.CommandText + ' WHERE REFERENCIA = ' + QuotedStr(Referencia)
  else
  if ID <> 0 then
    sdsProduto.CommandText := sdsProduto.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsProduto.Open;}
end;

function TDMImportarXML_NFSe.fnc_Abrir_Cidade(CodMunicipio: String): Boolean;
begin
  Result := False;
  cdsCidade.Close;
  sdsCidade.CommandText := 'SELECT * FROM CIDADE '
                         + ' WHERE CODMUNICIPIO = ' + QuotedStr(CodMunicipio);
  cdsCidade.Open;
  if not(cdsCidade.IsEmpty) or (cdsCidadeCODMUNICIPIO.AsString = CodMunicipio) then
    Result := True;
end;


end.
