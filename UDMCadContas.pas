unit UDMCadContas;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadContas = class(TDataModule)
    sdsContas: TSQLDataSet;
    dspContas: TDataSetProvider;
    cdsContas: TClientDataSet;
    dsContas: TDataSource;
    sdsContasID: TIntegerField;
    sdsContasNOME: TStringField;
    sdsContasAGENCIA: TStringField;
    sdsContasFILIAL: TIntegerField;
    sdsContasNUMCONTA: TStringField;
    sdsContasCNAB: TStringField;
    sdsContasDTENCERRAMENTO: TDateField;
    sdsContasID_TIPOCOBRANCA: TIntegerField;
    sdsContasDESCRICAO_NOTA: TStringField;
    cdsContasID: TIntegerField;
    cdsContasNOME: TStringField;
    cdsContasAGENCIA: TStringField;
    cdsContasFILIAL: TIntegerField;
    cdsContasNUMCONTA: TStringField;
    cdsContasCNAB: TStringField;
    cdsContasDTENCERRAMENTO: TDateField;
    cdsContasID_TIPOCOBRANCA: TIntegerField;
    cdsContasDESCRICAO_NOTA: TStringField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    cdsFilialENDERECO: TStringField;
    cdsFilialCOMPLEMENTO_END: TStringField;
    cdsFilialNUM_END: TStringField;
    cdsFilialBAIRRO: TStringField;
    cdsFilialCEP: TStringField;
    cdsFilialID_CIDADE: TIntegerField;
    cdsFilialCIDADE: TStringField;
    cdsFilialUF: TStringField;
    cdsFilialDDD1: TIntegerField;
    cdsFilialFONE1: TStringField;
    cdsFilialDDD2: TIntegerField;
    cdsFilialFONE: TStringField;
    cdsFilialDDDFAX: TIntegerField;
    cdsFilialFAX: TStringField;
    cdsFilialPESSOA: TStringField;
    cdsFilialCNPJ_CPF: TStringField;
    cdsFilialINSCR_EST: TStringField;
    cdsFilialSIMPLES: TStringField;
    cdsFilialENDLOGO: TStringField;
    cdsFilialCALCULAR_IPI: TStringField;
    cdsFilialINATIVO: TStringField;
    cdsFilialINSCMUNICIPAL: TStringField;
    cdsFilialCNAE: TStringField;
    cdsFilialHOMEPAGE: TStringField;
    cdsFilialUSARICMSSIMPLES: TStringField;
    cdsFilialID_REGIME_TRIB: TIntegerField;
    cdsFilialID_PIS: TIntegerField;
    cdsFilialID_COFINS: TIntegerField;
    cdsFilialTIPO_PIS: TStringField;
    cdsFilialTIPO_COFINS: TStringField;
    cdsFilialPERC_PIS: TFloatField;
    cdsFilialPERC_COFINS: TFloatField;
    cdsFilialID_CSTICMS: TIntegerField;
    cdsFilialID_CSTIPI: TIntegerField;
    cdsFilialEMAIL_NFE: TStringField;
    cdsFilialDTESTOQUE: TDateField;
    dsFilial: TDataSource;
    sdsContasTIPO_CONTA: TStringField;
    cdsContasTIPO_CONTA: TStringField;
    sdsContasID_BANCO: TIntegerField;
    sdsContasDIG_CONTA: TStringField;
    sdsContasCOD_CEDENTE: TStringField;
    cdsContasID_BANCO: TIntegerField;
    cdsContasDIG_CONTA: TStringField;
    cdsContasCOD_CEDENTE: TStringField;
    sdsBanco: TSQLDataSet;
    dspBanco: TDataSetProvider;
    cdsBanco: TClientDataSet;
    dsBanco: TDataSource;
    cdsBancoID: TIntegerField;
    cdsBancoCODIGO: TStringField;
    cdsBancoNOME: TStringField;
    sdsContasACEITE: TStringField;
    sdsContasID_OCORRENCIA: TIntegerField;
    sdsContasDIAS_PROTESTO: TIntegerField;
    sdsContasID_ESPECIE: TIntegerField;
    sdsContasID_CARTEIRA: TIntegerField;
    sdsContasID_INSTRUCAO1: TIntegerField;
    sdsContasID_INSTRUCAO2: TIntegerField;
    sdsContasID_TIPO_COBRANCA: TIntegerField;
    sdsContasMOEDA: TStringField;
    sdsContasVARIACAO_CARTEIRA: TStringField;
    sdsContasTIPO_DOCUMENTO: TStringField;
    sdsContasCOD_TRANSMISSAO: TStringField;
    sdsContasMENSAGEM_FIXA: TStringField;
    sdsContasPERC_DESCONTO: TFloatField;
    sdsContasPERC_JUROS: TFloatField;
    sdsContasVLR_IOF: TFloatField;
    sdsContasVLR_TAXA: TFloatField;
    sdsContasLOCAL_PAGAMENTO: TStringField;
    sdsContasEND_ARQUIVO_REM: TStringField;
    sdsContasNOME_ARQ_REM: TStringField;
    sdsContasEXTENSAO_ARQ_REM: TStringField;
    cdsContasACEITE: TStringField;
    cdsContasID_OCORRENCIA: TIntegerField;
    cdsContasDIAS_PROTESTO: TIntegerField;
    cdsContasID_ESPECIE: TIntegerField;
    cdsContasID_CARTEIRA: TIntegerField;
    cdsContasID_INSTRUCAO1: TIntegerField;
    cdsContasID_INSTRUCAO2: TIntegerField;
    cdsContasID_TIPO_COBRANCA: TIntegerField;
    cdsContasMOEDA: TStringField;
    cdsContasVARIACAO_CARTEIRA: TStringField;
    cdsContasTIPO_DOCUMENTO: TStringField;
    cdsContasCOD_TRANSMISSAO: TStringField;
    cdsContasMENSAGEM_FIXA: TStringField;
    cdsContasPERC_DESCONTO: TFloatField;
    cdsContasPERC_JUROS: TFloatField;
    cdsContasVLR_IOF: TFloatField;
    cdsContasVLR_TAXA: TFloatField;
    cdsContasLOCAL_PAGAMENTO: TStringField;
    cdsContasEND_ARQUIVO_REM: TStringField;
    cdsContasNOME_ARQ_REM: TStringField;
    cdsContasEXTENSAO_ARQ_REM: TStringField;
    sdsOcorrencia: TSQLDataSet;
    dspOcorrencia: TDataSetProvider;
    cdsOcorrencia: TClientDataSet;
    dsOcorrencia: TDataSource;
    sdsEspecie: TSQLDataSet;
    dspEspecie: TDataSetProvider;
    cdsEspecie: TClientDataSet;
    dsEspecie: TDataSource;
    sdsInstrucao: TSQLDataSet;
    dspInstrucao: TDataSetProvider;
    cdsInstrucao: TClientDataSet;
    dsInstrucao: TDataSource;
    cdsOcorrenciaID: TIntegerField;
    cdsOcorrenciaCODIGO: TStringField;
    cdsOcorrenciaNOME: TStringField;
    cdsOcorrenciaTIPO_REG: TStringField;
    cdsOcorrenciaID_BANCO: TIntegerField;
    cdsEspecieID: TIntegerField;
    cdsEspecieCODIGO: TStringField;
    cdsEspecieNOME: TStringField;
    cdsEspecieTIPO_REG: TStringField;
    cdsEspecieID_BANCO: TIntegerField;
    cdsInstrucaoID: TIntegerField;
    cdsInstrucaoCODIGO: TStringField;
    cdsInstrucaoNOME: TStringField;
    cdsInstrucaoTIPO_REG: TStringField;
    cdsInstrucaoID_BANCO: TIntegerField;
    sdsCarteira: TSQLDataSet;
    dspCarteira: TDataSetProvider;
    cdsCarteira: TClientDataSet;
    dsCarteira: TDataSource;
    cdsCarteiraID: TIntegerField;
    cdsCarteiraCODIGO: TStringField;
    cdsCarteiraCODIGO_IMP: TStringField;
    cdsCarteiraNOME: TStringField;
    cdsCarteiraGERAR_NOSSONUMERO: TStringField;
    cdsCarteiraGERAR_REMESSA: TStringField;
    cdsCarteiraID_BANCO: TIntegerField;
    sdsTipoCobranca: TSQLDataSet;
    dspTipoCobranca: TDataSetProvider;
    cdsTipoCobranca: TClientDataSet;
    dsTipoCobranca: TDataSource;
    cdsTipoCobrancaID: TIntegerField;
    cdsTipoCobrancaNOME: TStringField;
    cdsTipoCobrancaDESCONTADO: TStringField;
    cdsTipoCobrancaDEPOSITO: TStringField;
    cdsTipoCobrancaGERARBOLETO: TStringField;
    cdsTipoCobrancaQTDDIAS: TIntegerField;
    cdsTipoCobrancaCARTAOCREDITO: TStringField;
    cdsTipoCobrancaCHEQUE: TStringField;
    cdsTipoCobrancaDINHEIRO: TStringField;
    cdsTipoCobrancaMOSTRARNOCUPOM: TStringField;
    sdsContasDT_LIMITE_DESCONTO: TDateField;
    cdsContasDT_LIMITE_DESCONTO: TDateField;
    sdsContasCOMISSAO_PERMANENCIA: TStringField;
    cdsContasCOMISSAO_PERMANENCIA: TStringField;
    sdsContasNUM_CONVENIO_LIDER: TStringField;
    cdsContasNUM_CONVENIO_LIDER: TStringField;
    sdsContasDIG_AGENCIA: TStringField;
    cdsContasDIG_AGENCIA: TStringField;
    sdsContasDIAS_DEVOLUCAO: TIntegerField;
    cdsContasDIAS_DEVOLUCAO: TIntegerField;
    sdsContasNUM_ARQ_REMESSA: TIntegerField;
    cdsContasNUM_ARQ_REMESSA: TIntegerField;
    sdsContasPOS_NUMCONTA_RETORNO: TIntegerField;
    cdsContasPOS_NUMCONTA_RETORNO: TIntegerField;
    sdsContasPOS_CODBANCO_RETORNO: TIntegerField;
    cdsContasPOS_CODBANCO_RETORNO: TIntegerField;
    sdsContas_Retorno: TSQLDataSet;
    dspContas_Retorno: TDataSetProvider;
    cdsContas_Retorno: TClientDataSet;
    dsContas_Retorno: TDataSource;
    sdsContas_RetornoID: TIntegerField;
    sdsContas_RetornoPOS_NUM_NOTA: TIntegerField;
    sdsContas_RetornoQTD_NUM_NOTA: TIntegerField;
    sdsContas_RetornoPOS_NOSSO_NUMERO: TIntegerField;
    sdsContas_RetornoQTD_NOSSO_NUMERO: TIntegerField;
    sdsContas_RetornoPOS_ID_DUPLICATA: TIntegerField;
    sdsContas_RetornoQTD_ID_DUPLICATA: TIntegerField;
    sdsContas_RetornoPOS_OCORRENCIA: TIntegerField;
    sdsContas_RetornoPOS_DT_OCORRENCIA: TIntegerField;
    sdsContas_RetornoPOS_CONF_NOSSO_NUMERO: TIntegerField;
    sdsContas_RetornoQTD_CONF_NOSSO_NUMERO: TIntegerField;
    sdsContas_RetornoPOS_DT_VENCIMENTO: TIntegerField;
    sdsContas_RetornoPOS_VLR_TITULO: TIntegerField;
    sdsContas_RetornoQTD_VLR_TITULO: TIntegerField;
    sdsContas_RetornoPOS_ESPECIE: TIntegerField;
    sdsContas_RetornoPOS_VLR_DESPESA_COB: TIntegerField;
    sdsContas_RetornoQTD_VLR_DESPESA_COB: TIntegerField;
    sdsContas_RetornoPOS_VLR_IOF: TIntegerField;
    sdsContas_RetornoQTD_VLR_IOF: TIntegerField;
    sdsContas_RetornoPOS_VLR_ABATIMENTO: TIntegerField;
    sdsContas_RetornoQTD_VLR_ABATIMENTO: TIntegerField;
    sdsContas_RetornoPOS_VLR_DESCONTO: TIntegerField;
    sdsContas_RetornoQTD_VLR_DESCONTO: TIntegerField;
    sdsContas_RetornoPOS_VLR_PAGO: TIntegerField;
    sdsContas_RetornoQTD_VLR_PAGO: TIntegerField;
    sdsContas_RetornoPOS_VLR_JUROS_PAGO: TIntegerField;
    sdsContas_RetornoQTD_VLR_JUROS_PAGO: TIntegerField;
    sdsContas_RetornoPOS_DT_LIQUIDACAO: TIntegerField;
    sdsContas_RetornoPOS_INST_CANCELADA: TIntegerField;
    sdsContas_RetornoPOS_ERRO: TIntegerField;
    sdsContas_RetornoQTD_ERRO: TIntegerField;
    sdsContas_RetornoPOS_COD_LIQUIDACAO: TIntegerField;
    sdsContas_RetornoQTD_COD_LIQUIDACAO: TIntegerField;
    sdsContas_RetornoPOS_CARTEIRA: TIntegerField;
    sdsContas_RetornoPOS_NOME_CLIENTE: TIntegerField;
    sdsContas_RetornoQTD_NOME_CLIENTE: TIntegerField;
    cdsContas_RetornoID: TIntegerField;
    cdsContas_RetornoPOS_NUM_NOTA: TIntegerField;
    cdsContas_RetornoQTD_NUM_NOTA: TIntegerField;
    cdsContas_RetornoPOS_NOSSO_NUMERO: TIntegerField;
    cdsContas_RetornoQTD_NOSSO_NUMERO: TIntegerField;
    cdsContas_RetornoPOS_ID_DUPLICATA: TIntegerField;
    cdsContas_RetornoQTD_ID_DUPLICATA: TIntegerField;
    cdsContas_RetornoPOS_OCORRENCIA: TIntegerField;
    cdsContas_RetornoPOS_DT_OCORRENCIA: TIntegerField;
    cdsContas_RetornoPOS_CONF_NOSSO_NUMERO: TIntegerField;
    cdsContas_RetornoQTD_CONF_NOSSO_NUMERO: TIntegerField;
    cdsContas_RetornoPOS_DT_VENCIMENTO: TIntegerField;
    cdsContas_RetornoPOS_VLR_TITULO: TIntegerField;
    cdsContas_RetornoQTD_VLR_TITULO: TIntegerField;
    cdsContas_RetornoPOS_ESPECIE: TIntegerField;
    cdsContas_RetornoPOS_VLR_DESPESA_COB: TIntegerField;
    cdsContas_RetornoQTD_VLR_DESPESA_COB: TIntegerField;
    cdsContas_RetornoPOS_VLR_IOF: TIntegerField;
    cdsContas_RetornoQTD_VLR_IOF: TIntegerField;
    cdsContas_RetornoPOS_VLR_ABATIMENTO: TIntegerField;
    cdsContas_RetornoQTD_VLR_ABATIMENTO: TIntegerField;
    cdsContas_RetornoPOS_VLR_DESCONTO: TIntegerField;
    cdsContas_RetornoQTD_VLR_DESCONTO: TIntegerField;
    cdsContas_RetornoPOS_VLR_PAGO: TIntegerField;
    cdsContas_RetornoQTD_VLR_PAGO: TIntegerField;
    cdsContas_RetornoPOS_VLR_JUROS_PAGO: TIntegerField;
    cdsContas_RetornoQTD_VLR_JUROS_PAGO: TIntegerField;
    cdsContas_RetornoPOS_DT_LIQUIDACAO: TIntegerField;
    cdsContas_RetornoPOS_INST_CANCELADA: TIntegerField;
    cdsContas_RetornoPOS_ERRO: TIntegerField;
    cdsContas_RetornoQTD_ERRO: TIntegerField;
    cdsContas_RetornoPOS_COD_LIQUIDACAO: TIntegerField;
    cdsContas_RetornoQTD_COD_LIQUIDACAO: TIntegerField;
    cdsContas_RetornoPOS_CARTEIRA: TIntegerField;
    cdsContas_RetornoPOS_NOME_CLIENTE: TIntegerField;
    cdsContas_RetornoQTD_NOME_CLIENTE: TIntegerField;
    sdsContas_RetornoPOS_NUMCONTA_RETORNO: TIntegerField;
    sdsContas_RetornoPOS_CODBANCO_RETORNO: TIntegerField;
    cdsContas_RetornoPOS_NUMCONTA_RETORNO: TIntegerField;
    cdsContas_RetornoPOS_CODBANCO_RETORNO: TIntegerField;
    sdsContas_RetornoNUMCONTA_CEDENTE: TStringField;
    cdsContas_RetornoNUMCONTA_CEDENTE: TStringField;
    sdsContas_RetornoQTD_ERRO_CADASTRO: TIntegerField;
    cdsContas_RetornoQTD_ERRO_CADASTRO: TIntegerField;
    sdsContas_RetornoQTD_CARTEIRA: TIntegerField;
    cdsContas_RetornoQTD_CARTEIRA: TIntegerField;
    cdsBancoOPCAO_GERAR_NOSSNUMERO: TStringField;
    sdsContas_Calculo: TSQLDataSet;
    cdsContas_Calculo: TClientDataSet;
    dsContas_Calculo: TDataSource;
    sdsContas_CalculoID: TIntegerField;
    sdsContas_CalculoANO: TIntegerField;
    sdsContas_CalculoITEM: TIntegerField;
    cdsContas_CalculoID: TIntegerField;
    cdsContas_CalculoANO: TIntegerField;
    cdsContas_CalculoITEM: TIntegerField;
    dsContas_Mestre: TDataSource;
    cdsContassdsContas_Calculo: TDataSetField;
    sdsContasPERC_MULTA: TFloatField;
    sdsContasDIAS_MULTA: TIntegerField;
    cdsContasPERC_MULTA: TFloatField;
    cdsContasDIAS_MULTA: TIntegerField;
    sdsContasACBR_TIPOCOBRANCA: TStringField;
    sdsContasACBR_LAYOUTREMESSA: TStringField;
    cdsContasACBR_TIPOCOBRANCA: TStringField;
    cdsContasACBR_LAYOUTREMESSA: TStringField;
    sdsContasNOSSONUMERO_POR_ANO: TStringField;
    cdsContasNOSSONUMERO_POR_ANO: TStringField;
    sdsContasBANCO_LOGO: TStringField;
    cdsContasBANCO_LOGO: TStringField;
    sdsContas_CalculoSEQ_NOSSONUMERO: TFMTBCDField;
    cdsContas_CalculoSEQ_NOSSONUMERO: TFMTBCDField;
    sdsContasDT_REMESSA: TDateField;
    sdsContasSEQ_REMESSA_DIA: TIntegerField;
    cdsContasDT_REMESSA: TDateField;
    cdsContasSEQ_REMESSA_DIA: TIntegerField;
    sdsContasTIPO_IMPRESSAO: TStringField;
    cdsContasTIPO_IMPRESSAO: TStringField;
    mArqNumero: TClientDataSet;
    mArqNumeroNossoNumero: TStringField;
    dsmArqNumero: TDataSource;
    cdsBancoACBR_USAR_MONTAR_NOSSONUMERO: TStringField;
    cdsBancoINICIAL_NOME_ARQ_REMESSA: TStringField;
    sdsContasTIPO_DOCUMENTO_SANTANDER: TStringField;
    cdsContasTIPO_DOCUMENTO_SANTANDER: TStringField;
    sdsContasTIPO_CARTEIRA: TStringField;
    cdsContasTIPO_CARTEIRA: TStringField;
    sdsContasINATIVO: TStringField;
    cdsContasINATIVO: TStringField;
    sdsContasCONTROLA_EMISSAO_BOLETO: TStringField;
    cdsContasCONTROLA_EMISSAO_BOLETO: TStringField;
    sdsContasGERAR_BOLETO: TStringField;
    sdsContasGERAR_DEPOSITO: TStringField;
    cdsContasGERAR_BOLETO: TStringField;
    cdsContasGERAR_DEPOSITO: TStringField;
    qParametros_Fin: TSQLQuery;
    qParametros_FinCONTROLAR_BANCO_REM_DEP: TStringField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralMOSTRAR_COD_CONTABIL: TStringField;
    sdsContasCOD_CONTABIL: TIntegerField;
    cdsContasCOD_CONTABIL: TIntegerField;
    sdsContasCODMORA: TSmallintField;
    cdsContasCODMORA: TSmallintField;
    sdsContasREMESSA_TESTE: TStringField;
    cdsContasREMESSA_TESTE: TStringField;
    sdsContas_Sacado: TSQLDataSet;
    cdsContas_Sacado: TClientDataSet;
    cdsContassdsContas_Sacado: TDataSetField;
    dsContas_Sacado: TDataSource;
    sdsContas_SacadoID: TIntegerField;
    sdsContas_SacadoFILIAL: TIntegerField;
    sdsContas_SacadoCOD_SACADO: TStringField;
    cdsContas_SacadoID: TIntegerField;
    cdsContas_SacadoFILIAL: TIntegerField;
    cdsContas_SacadoCOD_SACADO: TStringField;
    sdsFiliallk: TSQLDataSet;
    dspFiliallk: TDataSetProvider;
    cdsFiliallk: TClientDataSet;
    dsFiliallk: TDataSource;
    cdsContas_SacadolkNomeFilial: TStringField;
    sdsContasEND_ARQUIVO_RET: TStringField;
    cdsContasEND_ARQUIVO_RET: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspContasUpdateError(Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsContas_CalculoNewRecord(DataSet: TDataSet);
    procedure cdsContasNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro: string;
    ctCommand: string;
    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Abrir_Ocorrencia(ID_Banco: Integer);
    procedure prc_Abrir_Especie(ID_Banco: Integer);
    procedure prc_Abrir_Instrucao(ID_Banco: Integer);
    procedure prc_Abrir_Carteira(ID_Banco: Integer);
  end;

var
  DMCadContas: TDMCadContas;

implementation

uses
  DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadContas.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsContas.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('CONTAS', 0);

  cdsContas.Insert;
  cdsContasID.AsInteger := vAux;
end;

procedure TDMCadContas.prc_Excluir;
begin
  if not (cdsContas.Active) or (cdsContas.IsEmpty) then
    exit;
  cdsContas_Calculo.First;
  while not cdsContas_Calculo.Eof do
    cdsContas_Calculo.Delete;
  cdsContas.Delete;
  cdsContas.ApplyUpdates(0);
end;

procedure TDMCadContas.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsContasNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome não informado!';
  if trim(cdsContasTIPO_CONTA.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Tipo não informado!';
  if cdsContasFILIAL.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Filial não informada!';
  if (trim(cdsContasTIPO_CONTA.AsString) = 'B') and (cdsContasID_BANCO.IsNull) then
    vMsgErro := vMsgErro + #13 + '*** Se conta é tipo Banco, informar nome do banco!';
  if vMsgErro <> '' then
    exit;

  cdsContas.Post;
  cdsContas.ApplyUpdates(0);
  if cdsContas_Retorno.Active then
  begin
    cdsContas_Retorno.ApplyUpdates(0);
  end;
end;

procedure TDMCadContas.prc_Localizar(ID: Integer);
begin
  cdsContas.Close;
  sdsContas.CommandText := ctCommand;
  if ID <> 0 then
    sdsContas.CommandText := sdsContas.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsContas.Open;
end;

procedure TDMCadContas.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsContas.CommandText;
  cdsFilial.Open;
  cdsTipoCobranca.Open;
  cdsBanco.Open;
  qParametros_Fin.Close;
  qParametros_Fin.Open;
  qParametros_Geral.Close;
  qParametros_Geral.Open;
  cdsFiliallk.Open;
  //*** Logs Implantado na versão .353
  LogProviderList.OnAdditionalValues := DoLogAdditionalValues;
  for i := 0 to (Self.ComponentCount - 1) do
  begin
    if (Self.Components[i] is TClientDataSet) then
    begin
      SetLength(aIndices, 0);
      vIndices := TClientDataSet(Components[i]).IndexFieldNames;
      while (vIndices <> EmptyStr) do
      begin
        SetLength(aIndices, Length(aIndices) + 1);
        x := Pos(';', vIndices);
        if (x = 0) then
        begin
          aIndices[Length(aIndices) - 1] := vIndices;
          vIndices := EmptyStr;
        end
        else
        begin
          aIndices[Length(aIndices) - 1] := Copy(vIndices, 1, x - 1);
          vIndices := Copy(vIndices, x + 1, MaxInt);
        end;
      end;
      LogProviderList.AddProvider(TClientDataSet(Self.Components[i]), TClientDataSet(Self.Components[i]).Name, aIndices);
    end;
  end;
  //***********************
end;

procedure TDMCadContas.dspContasUpdateError(Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name, UpdateKind, E);
end;

procedure TDMCadContas.prc_Abrir_Carteira(ID_Banco: Integer);
begin
  cdsCarteira.Close;
  sdsCarteira.ParamByName('ID_BANCO').AsInteger := ID_Banco;
  cdsCarteira.Open;
end;

procedure TDMCadContas.prc_Abrir_Especie(ID_Banco: Integer);
begin
  cdsEspecie.Close;
  sdsEspecie.ParamByName('ID_BANCO').AsInteger := ID_Banco;
  cdsEspecie.Open;
end;

procedure TDMCadContas.prc_Abrir_Instrucao(ID_Banco: Integer);
begin
  cdsInstrucao.Close;
  sdsInstrucao.ParamByName('ID_BANCO').AsInteger := ID_Banco;
  cdsInstrucao.Open;
end;

procedure TDMCadContas.prc_Abrir_Ocorrencia(ID_Banco: Integer);
begin
  cdsOcorrencia.Close;
  sdsOcorrencia.ParamByName('ID_BANCO').AsInteger := ID_Banco;
  cdsOcorrencia.Open;
end;

procedure TDMCadContas.cdsContas_CalculoNewRecord(DataSet: TDataSet);
begin
  cdsContas_CalculoID.AsInteger := cdsContasID.AsInteger;
end;

procedure TDMCadContas.DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadContas.cdsContasNewRecord(DataSet: TDataSet);
begin
  cdsContasINATIVO.AsString := 'N';
end;

end.

